HEADERS = libThirdParty.h
OBJECTS = test.o libThirdParty.o

default: test

%.o: %.c $(HEADERS)
	gcc -c $< -o $@

test: $(OBJECTS)
	gcc $(OBJECTS) -o $@

lib: libThirdParty.o
	ar -q -cv libThirdParty.a libThirdParty.o

clean:
	-rm -f $(OBJECTS)
	-rm -f libThirdParty.a
	-rm -f test
