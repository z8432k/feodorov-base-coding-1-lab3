PACK = pack
UNPACK = unpack

CFLAGS = -Wall -g -ansi -O0
LDLIBS =

default: bin/$(PACK) bin/$(UNPACK)

bin/$(PACK): bin/$(PACK).o bin/error.o bin/data.o
	$(CC) $^ $(LDLIBS) -o $@

bin/error.o: src/error.c
	$(CC) $(CFLAGS) -o $@ -c $<

bin/data.o: src/data.c
	$(CC) $(CFLAGS) -o $@ -c $<

bin/$(UNPACK): bin/$(UNPACK).o bin/error.o  bin/data.o
	$(CC) $^ $(LDLIBS) -o $@

bin/$(PACK).o: src/$(PACK).c
	$(CC) $(CFLAGS) -o $@ -c $<

bin/$(UNPACK).o: src/$(UNPACK).c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -fv bin/*.o bin/$(PACK) bin/$(UNPACK)
