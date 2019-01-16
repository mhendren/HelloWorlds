#!/usr/local/bin/python

x = [100, 8, 6, -3, 8, -87, 12, 67, -3, 0, -7, -29]

print(''.join([chr(x) for x in [i+100 for i in [0, 8, 14, 11, 19, -68, -56, 11, 8, 8, 1, -28]][::-1]]))

