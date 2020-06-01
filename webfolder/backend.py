#!/usr/bin/python3

from http.server import *
import socketserver
import argparse
import sys
import json
import datetime

class HeartDiagnosis():
    def get_erasmia(self):
        # make up data before interface with FPGA
        return {
            "name": "Arrhythmia",
            "probability": 0.42,
            "voltage": [1,2,4,35,4,3,6],
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
            data = heartDiagnosis.get_erasmia()
            print(data)

        except:
            # unable to retrive data
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
