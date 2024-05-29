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

LIB = ar rcs
CC = gcc
CFLAGS = -Wall -Wextra -Werror
DIR = ./

FILES = client server

SOURCES = $(addprefix $(DIR), $(addsuffix .c, $(FILES)))
OBJECTS = $(addprefix $(DIR), $(addsuffix .o, $(FILES)))

all: $(FILES)

server: server.o libft
	$(CC) -o $@ $< -Llibft -lft

client: client.o libft
	$(CC) -o $@ $< -Llibft -lft

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

libft:
	make -C libft
 
clean:
	rm -f $(FILES) *.o

fclean: clean
	rm -f all

re: fclean all

.PHONY: all clean fclean re