NAME = libasm.a

SOURCES = ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s


OBJECTS = $(SOURCES:.s=.o)

AR = ar rcs
NASM = nasm
NASMFLAGS = -f elf64

$(NAME): $(OBJECTS)
	$(AR) $(NAME) $(OBJECTS)

all: $(NAME)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<