#	@(#)Makefile	5.8 (Berkeley) 5/11/90

PROG32=trek32.exe
PROG16=trek16.exe

DESTDIR=/usr/bin/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/local/man/man6
#CC=     cc
CC=i586-pc-msdosdjgpp-gcc
# the following line includes '-cckr' to force old-style K&R compilation
CFLAGS= -O2
LDFLAGS=-s

WCC=wcl

SRCS=	abandon.c attack.c autover.c capture.c check_out.c checkcond.c \
	compkl.c computer.c damage.c damaged.c dcrept.c destruct.c \
	dock.c dumpgame.c dumpme.c dumpssradio.c events.c externs.c \
	getcodi.c getpar.c help.c impulse.c initquad.c kill.c klmove.c \
	lose.c lrscan.c main.c move.c nova.c out.c phaser.c play.c ram.c \
	ranf.c rest.c schedule.c score.c setup.c setwarp.c \
	shield.c snova.c srscan.c systemname.c torped.c utility.c \
	visual.c warp.c win.c cgetc.c

OBJS32=$(SRCS:.c=.o)
OBJS16=$(SRCS:.c=.obj)

# INCS=	-I/usr/include/bsd
LIBS=	-lm

all: ${PROG32} ${PROG16} doc

$(PROG32): $(OBJS32)
	$(CC) $(LDFLAGS) $(LIBS) -o $@ $(OBJS32)

$(PROG16): $(OBJS16)
	$(WCC) -fe=$@ $(OBJS16)

%.o: %.c getpar.h trek.h
	$(CC) $(CFLAGS) $(INCS) -c $< -o $@

%.obj: %.c getpar.h trek.h
	$(WCC) $< -c -w4 -e25 -zq -os -of -oh -bt=dos -fo=.obj -ml

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG16) $(PROG32) core *.o *.err *.obj trek.ps trek.pdf read_me.pdf trek_mp.pdf

doc:
	man -t ./trek.6 >trek_mp.ps
	ps2pdf trek_mp.ps
	pdfroff trekdocs/read_me.nr >read_me.pdf
	pdfroff trekdocs/trek.me >trek.pdf
