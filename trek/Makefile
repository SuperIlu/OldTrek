#	@(#)Makefile	5.8 (Berkeley) 5/11/90

PROG=	trek.exe

DESTDIR=/usr/bin/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/local/man/man6
#CC=     cc
CC=i586-pc-msdosdjgpp-gcc
# the following line includes '-cckr' to force old-style K&R compilation
CFLAGS= -O2
LDFLAGS=-s

SRCS=	abandon.c attack.c autover.c capture.c check_out.c checkcond.c \
	compkl.c computer.c damage.c damaged.c dcrept.c destruct.c \
	dock.c dumpgame.c dumpme.c dumpssradio.c events.c externs.c \
	getcodi.c getpar.c help.c impulse.c initquad.c kill.c klmove.c \
	lose.c lrscan.c main.c move.c nova.c out.c phaser.c play.c ram.c \
	ranf.c rest.c schedule.c score.c setup.c setwarp.c \
	shield.c snova.c srscan.c systemname.c torped.c utility.c \
	visual.c warp.c win.c cgetc.c
OBJS=	abandon.o attack.o autover.o capture.o check_out.o checkcond.o \
	compkl.o computer.o damage.o damaged.o dcrept.o destruct.o \
	dock.o dumpgame.o dumpme.o dumpssradio.o events.o externs.o \
	getcodi.o getpar.o help.o impulse.o initquad.o kill.o klmove.o \
	lose.o lrscan.o main.o move.o nova.o out.o phaser.o play.o ram.o \
	ranf.o rest.o schedule.o score.o setup.o setwarp.o \
	shield.o snova.o srscan.o systemname.o torped.o utility.o \
	visual.o warp.o win.o cgetc.o
# INCS=	-I/usr/include/bsd
LIBS=	-lm

all: ${PROG} doc

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

%.o: %.c getpar.h trek.h
	$(CC) $(CFLAGS) $(INCS) -c $< -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o trek.ps trek.pdf read_me.pdf trek_mp.pdf

doc:
	man -t ./trek.6 >trek_mp.ps
	ps2pdf trek_mp.ps
	pdfroff trekdocs/read_me.nr >read_me.pdf
	pdfroff trekdocs/trek.me >trek.pdf
