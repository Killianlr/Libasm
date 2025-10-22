#include "libasm.h"
#include <stdio.h>
#include <fcntl.h>

int main(void)
{
    printf("%zu\n", ft_strlen("Hello World!"));
    
    
    char dest[30];
    ft_strcpy(dest, "bonsoir");
    printf("%s\n", dest);


    printf("%d\n", ft_strcmp("hello", "holla"));

    ssize_t ret;
    char    *buf;
    buf = NULL;
    ret = ft_write(1, buf, 13);
    printf("%zd\n", ret);

    int fd = open("main.c", O_RDONLY);
    ssize_t ret1;
    char    buff[20];
    ret1 = ft_read(fd, buff, 20);
    printf("%zd, %s\n", ret1, buff);

    char    src[8] = "hello world";
    char    *dst;

    dst = ft_strdup(src);
    printf("%p --- %s\n", src, src);
    printf("%p --- %s\n", dst, dst);
    free(dst);
    return 0;
}