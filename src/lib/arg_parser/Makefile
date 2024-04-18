SRC		=	parse.c

INC		=	include

OBJ			=	$(SRC:.c=.o)

NAME = libargparser.o

CFLAGS			+=	-W -Wall -Wextra -Werror -I$(INC)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

debug: CFLAGS += -g
debug: re

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all $(NAME) debug clean fclean re
