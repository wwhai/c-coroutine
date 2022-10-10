CC=gcc
CFLAGS = -g
S=coroutine.o example_server.o
C=coroutine.o example_client.o
.PHONY: server
server: ${S}
	$(CC) -o example_server ${S}

.PHONY: client
client: ${C}
	$(CC) -o example_client ${C}

.PHONY: clean
clean :
	rm -rf *.o

