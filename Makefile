# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marcoalv <marcoalv@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/28 14:22:20 by marcoalv          #+#    #+#              #
#    Updated: 2024/03/28 14:22:39 by marcoalv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk.a
INCLUDE = minitalk.h

LIB = ar rcs
CC = gcc
CFLAGS = -Wall -Wextra -Werror
DIR = ./

FILES =

SOURCES = $(addprefix $(DIR), $(addsuffix .c, $(FILES)))
OBJECTS = $(addprefix $(DIR), $(addsuffix .o, $(FILES)))

all: $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJECTS) $(INCLUDE)
	$(LIB) $(NAME) $(OBJECTS)

clean:
	rm -f $(NAME) *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re