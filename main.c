#include "libasm.h"
#include <stdio.h>

int main(void)
{
    char dest[30];
    printf("%zu\n", ft_strlen("Hello World!"));
    ft_strcpy(dest, "bonsoir");
    printf("%s\n", dest);
    printf("%d\n", ft_strcmp("hello", "holla"));
    return 0;
}