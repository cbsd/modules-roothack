all: roothack

roothack: src/roothack.c
	cc src/roothack.c -o init -larchive -lbz2 -lz -llzma -lcrypto -lbsdxml -lmd -lprivatezstd -lpthread -static && strip init

clean:
	rm -f init *.core
