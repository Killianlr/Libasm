#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

int main(void)
{
    char    *src = NULL;
    char    *dst;

    dst = strdup(NULL);
    // printf("%p --- %s\n", src, src);
    // printf("%p --- %s\n", dst, dst);
    return 0;
}