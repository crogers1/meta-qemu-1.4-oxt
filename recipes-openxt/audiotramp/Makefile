ifndef prefix
	prefix=/usr
endif

all:
	gcc -o audiotramp audiotramp.c

install:
	install -m 0755 -d $(prefix)/bin
	install -m 0755 audiotramp $(prefix)/bin/audiotramp
 
