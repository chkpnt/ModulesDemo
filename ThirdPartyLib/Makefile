HEADERS = libThirdParty.h
OBJECTS = test.o libThirdParty.o

default: test

%.o: %.c $(HEADERS)
	gcc -c $< -o $@

libThirdParty.a: libThirdParty.o
	ar -q -cv libThirdParty.a libThirdParty.o

test: $(OBJECTS)
	gcc $(OBJECTS) -o $@

lib: libThirdParty.a

pod: lib
	mkdir -p Pod/includes/public
	cp libThirdParty.h Pod/includes/public/
	mkdir -p Pod/libraries
	cp libThirdParty.a Pod/libraries/

clean:
	-rm -f $(OBJECTS)
	-rm -f libThirdParty.a
	-rm -f test
