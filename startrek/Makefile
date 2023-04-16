CC=i586-pc-msdosdjgpp-gcc
WCC=wcl

all: strek32.exe strek16.exe

strek32.exe: startrek.c
	$(CC) -s -O2 -Wall $< -o $@

strek16.exe: startrek.c
	$(WCC) $< -w4 -e25 -os -bt=dos -fo=.obj -ml -fe=$@

clean:
	rm -f startrek strek32.exe strek16.exe
