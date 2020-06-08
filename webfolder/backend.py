#!/usr/bin/python3

from http.server import SimpleHTTPRequestHandler, HTTPServer
import socketserver
import argparse
import sys
import json
import datetime
import mmap
import struct
import time
import pandas as pd
import numpy as np

# LW_BRIDGE_BASE    = 0xFF200000 # absolute
# LEDR_RELATIVE_ADDR = 0x00000000  # relative to bridge
# LW_BRIDGE_SPAN   = 0x00005000 

# class axi:  
#     def __init__(self, addr, size):
#         self.addr = addr
#         self.size = size

#         self.mem = open('/dev/mem', 'r+b')
#         self.map = mmap.mmap(self.mem.fileno(), self.size, offset = self.addr)
        
#     def __del__(self):
#         self.map.close()
#         self.mem.close()

#     def read(self, addr):
#         'Read 4 bytes from register at addr'
#         self.map.seek(addr)
#         return struct.unpack('<L', self.map.read(4))[0]

#     def write(self, addr, data):
#         'Write data as 4 bytes to register at addr'
#         self.map.seek(addr)
#         self.map.write(struct.pack('<L', data))
class DATAHANLDER():
    def __init__(self):
        Y = pd.read_csv("/home/alan/winDesktop/ARM_ECG/simulation/ptbdb_abnormal.csv",header = None)
        self.data = np.array(Y)[:10,:187]
class HeartDiagnosis():
    LW_BRIDGE_BASE    = 0xFF200000 # absolute
    LEDR_RELATIVE_ADDR = 0x00000000  # relative to bridge
    LW_BRIDGE_SPAN   = 0x00005000 
    def __init__(self, addr = LW_BRIDGE_BASE, size = LW_BRIDGE_SPAN):
        # self.axi = axi(addr, size)
        self.DATA = DATAHANLDER()
    def get_erasmia(self, id):
        # check id is valid
        if id=="": raise Exception("No ID given")
        if int(id)>10 or int(id)<0: raise Exception("ID out ot range")
        
        # self.axi.write(self.LEDR_RELATIVE_ADDR,int(id))

        # make up data before interface with FPGA
        return {
            "name": "Arrhythmia",
            "probability": 0.42,
            "voltage": list(self.DATA.data[int(id),:]),
            "time": datetime.datetime.now().strftime("%H:%M:%S")
        }



class MyHandler(SimpleHTTPRequestHandler):

    def do_GET(self):
        """Serve a GET request."""

        ####################################
        # ROUTER
        ####################################
        if self.path.split('/')[1] == 'api':
            # api stuff
            return self.do_api()
        else:
            # static stuff (default stuff)
            return SimpleHTTPRequestHandler.do_GET(self)


    def do_api(self):
        # current only disease is aresmia, no need furether routing
        try:
            erasmia_id = self.path.split('/')[-1]
            data = heartDiagnosis.get_erasmia(erasmia_id)
            print(erasmia_id)

        except Exception as e:
            # unable to retrive data
            print(e)
            self.send_error(500, "Unable to retrive data from diagnosis")

        else:
            # retrived data without expection
            self.send_response(200)
            self.send_header("Content-type", "application/json")
            self.end_headers()

            self.wfile.write(json.dumps(data).encode('utf-8'))


if __name__ == '__main__':
    # parser argument
    parser = argparse.ArgumentParser()
    parser.add_argument('port', action='store',
                        default=8000, type=int,
                        nargs='?',
                        help='Specify alternate port [default: 8000]')
    parser.add_argument('--bind', '-b', default='', metavar='ADDRESS',
                        help='Specify alternate bind address '
                                '[default: all interfaces]')
    args = parser.parse_args()

    # init handlers
    heartDiagnosis=HeartDiagnosis()

    httpHandler = MyHandler
    httpHandler.protocol_version="HTTP/1.0"

    # init http demon
    httpd = HTTPServer((args.bind, args.port), httpHandler)

    # http demon status
    sa = httpd.socket.getsockname()
    print("Serving HTTP on", sa[0], "port", sa[1], "...")

    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nKeyboard interrupt received, exiting.")
        httpd.server_close()
        sys.exit(0)





