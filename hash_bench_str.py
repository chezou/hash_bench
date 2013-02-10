# encoding: UTF8
import time
import sys

argvs = sys.argv
argc = len(argvs)

if (argc != 2):
	print 'You need 1 argument'
	print 'Usage: %s num(million)'
	quit()

size = int(argvs[1]) * 1000000

a = time.clock()
dict_i = {str(i):i for i in range(size)}
b = time.clock()

c = time.clock()
for i in range(1000000):
	dict_i[str(i)]
d = time.clock()

print "size:%d\tcreate:%f\tlookup:%f" % (size,(b - a),(d-c))
