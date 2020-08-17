# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chsparro <chsparro@21-school.ru>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/17 05:24:34 by chsparro          #+#    #+#              #
#    Updated: 2020/08/17 06:45:55 by chsparro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INC=/usr/include
INCLIB=$(INC)/../lib
MLX=./minilibx
INCLUDE= -I. -I$(MLX)
CFLAGS=-g $(INCLUDE)
CC=gcc $(CFLAGS)

NAME=cub3d
SRC=main.c
OBJ=$(SRC:.c=.o)

all	:$(NAME)

$(NAME)	:$(OBJ)
	$(CC) -o $(NAME) $(OBJ) -L$(MLX) -lmlx -L$(INCLIB) -lXext -lX11 -lm -lbsd

clean	:
	rm -f $(NAME) $(OBJ)

re	: clean all
