import sys
import mmap
import struct
import time

# lightweight bridge offset:   ff20 0000
# default wrapper location:    0010 0000 - 0010 0100
# default pll config location: 0011 0000 - 0011 0100

# since lowest address is    ff30 0000,
# we open /dev/mem:          ff30 0000 - ff31 0100
# which in relative addr is: 0000 0000 - 0001 0100

BRIDGE_ADDR    = 0xFF300000 # absolute
WRAPPER_ADDR   = 0x00000000 # relative to bridge
PLLCONFIG_ADDR = 0x00010000 # relative to bridge
MAXIMUM_ADDR   = 0x00010100 # relative to bridge

r_led_add=0xFF200000

class axi:
	
	def __init__(self, addr = 0xFF200000, size = 0x20000):
		self.addr = addr
		self.size = size
		if __debug__:
			pass
		else:
			self.mem = open('/dev/mem', 'r+b')
			self.map = mmap.mmap(self.mem.fileno(), self.size, offset = self.addr)
		
	def __del__(self):
		if __debug__:
			pass
		else:
			self.map.close()
			self.mem.close()

	def read(self, addr):
		'Read 4 bytes from register at addr'
		if __debug__:
			print ('read  addr: ' + hex(addr))
			return 0
		else:
			self.map.seek(addr)
			return struct.unpack('<L', self.map.read(4))[0]

	def write(self, addr, data):
		'Write data as 4 bytes to register at addr'
		if __debug__:
			print('write addr: ' + hex(addr) + ' data: ' + hex(data))
		else:
			self.map.seek(addr)
			self.map.write(struct.pack('<L', data))


led=axi()
led.write(0xFF200000,1)

while led.read(0xFF200000)<=512:
    led.write(0xFF200000,2*led.read(0xFF200000))
    time.sleep(1)
    if led.read(0xFF200000)==512:
        led.write(0xFF200000,1)
        time.sleep(1)


led.__del__(0xFF200000)
 