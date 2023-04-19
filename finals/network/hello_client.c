/*
    hello_client.c

    Adapted from Douglas Comer's "Internetworking with TCP/IP"
    by Jeff Ondich and Lauren Jantz, 1995
    Rewritten in C++, Jeff Ondich, 2000
    Re-rewritten in C, Jeff Ondich, 2023

    This client is half of a "hello world" client/server pair. The client makes
    a connection to the server and port specified on the command line, and the
    server sends back a character string. The client prints this message to
    standard output on the client machine.

    Note that the protocol is exceedingly simple:

    1. Client initiates connection
    2. Server sends message
    3. Server closes connection.

    In particular, the client never sends any actual text to the server. If you
    want your client to talk to the server, you'll need to design a more complicated
    protocol, the client will use write() to send data to the server, and the
    server will use read() to read data from the client.

    NOTE: this client is so simple that somebody testing hello_server would normally
    just use "netcat" (also known as "nc") as the client. For example, suppose you have
    two terminals logged into the same machine (e.g., mantis.mathcs.carleton.edu). You
    could run the server:

        ./hello_server 5000 "hello, world!"

    in one terminal, and then in the other, you could test the server:

        nc 127.0.0.1 5000

    All nc does with this command-line syntax is to open a TCP connection and print whatever
    comes back, just like hello_client. Note that 127.0.0.1 is the IP address for
    "localhost" (i.e., this computer).
*/

#include <stdio.h>
#include <unistd.h>
#include "tcp_utilities.h"

int main(int argc, char *argv[])
{
    // Parse the command line to determine the host name and port number.
    const char *server_name = argv[0];
    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s hostname port\n", server_name);
        return 1;
    }

    const char *host_name = argv[1];

    int port;
    if (sscanf(argv[2], "%d", &port) != 1)
    {
        fprintf(stderr, "port \"%s\" is not a decimal integer\n", argv[2]);
        return 1;
    }

    // Connect to the server.
    int socket_descriptor = make_connection(host_name, port);
    if (socket_descriptor < 0)
    {
        fprintf(stderr, "Unable to connect to server at %s: %d\n", host_name, port);
        return 1;
    }

    // Connection made, we now read one byte at a time until the end of the
    // the stream, sending each byte to standard output.
    char c;

    printf("The server says: ");
    int k = read_from_socket(socket_descriptor, &c, 1);
    while (k > 0)
    {
        putchar(c);
        k = read_from_socket(socket_descriptor, &c, 1);
    }
    putchar('\n');

    // All communication is done. Clean up and quit.
    close(socket_descriptor);

    return 0;
}
