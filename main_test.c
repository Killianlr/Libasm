#include <stdio.h>
#include <string.h>

int main(void)
{
    char    *s1;
    char    *s2;

    s1 = "hello";
    s2 = "holla";
    printf("%d\n", strcmp(s1, s2));
    return 0;
}