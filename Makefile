all:
	make -C trek/ all
	make -C startrek/ all

clean:
	make -C trek/ clean
	make -C startrek/ clean
