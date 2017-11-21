CC=gcc
DEPS = fastboot.h usb.h
OBJ = protocol.o engine.o fastboot.o usb_linux.o util_linux.o
SRC = protocol.c engine.c fastboot.c usb_linux.c util_linux.c

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

make: $(OBJ)
	$(CC) -Wall $(SRC) -o fastboot

clean:
	rm -f *.o
	rm -f fastboot
