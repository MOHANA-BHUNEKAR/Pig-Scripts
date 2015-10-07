#!/usr/bin/python

import sys

for line in sys.stdin:
    a = line.rstrip('\n').split("|")
    (id, name, age, location) = a[0].split()
    if int(age) > 30:
        print "%s\t%s\t%s\t%s"%(id, name, age, location)
