SRC		=	src/main.c

INC		=	include

OBJ			=	$(SRC:.c=.o)

NAME = pure

LIBS = -lncurses

CFLAGS			+=	-W -Wall -Wextra -Werror -I$(INC) $(LIBS)

all: $(NAME)

$(NAME): $(OBJ)
	gcc $(CFLAGS) -o $(NAME) $(OBJ)

debug: CFLAGS += -g
debug: re

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all $(NAME) debug clean fclean re
