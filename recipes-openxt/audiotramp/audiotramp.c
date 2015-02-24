/* (c) 2015 Alexander Supertramp */

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

void usage(void)
{
    fprintf(stdout, "alsatramp-daemon <domid> [-ut]\n");
}

int main(int argc, char **argv)
{
    long int domid = -1;
    char *errptr = NULL;
    if(argc < 2)
    {
        // No domid? Bail
        fprintf(stderr, "Invalid arguments\n");
        usage();
        return -1;
    }
    else
    {
        // Set errno to clear before the call to catch conversion
        // errors
        errno = 0;
        domid = strtol(argv[1], &errptr, 10);

        // Bail if errno or no digits found
        if(errno || argv[1] == errptr)
        {
            fprintf(stderr, "[alsatramp] Failed to read domid\n");
            return -2;
        }
        else if(domid < 0)
        {
            fprintf(stderr, "[alsatramp] Invalid domid %d\n", domid);
            return -3;
        }
    }

    printf("[alsatramp] Starting up for domain %d\n", domid);

    return 0;
}
