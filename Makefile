# Makefile for PaletteConverter

CC = gcc
CFLAGS = -Wall -O2
TARGET = PaletteConverter

SRCS = GPL2ASE.c AseWriter.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(TARGET)