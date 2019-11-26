# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahmansou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/26 13:24:23 by ahmansou          #+#    #+#              #
#    Updated: 2019/11/26 13:24:23 by ahmansou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = init
SRCS = 
OBJS = $(SRCS:.c=.o)
FLG = -Wall -Werror -Wextra

$(NAME): $(OBJS)
	make -C libft
	make -C ft_printf
	gcc -o $(NAME) $(FLG) $(OBJS) libft/libft.a ft_printf/libftprintf.a

clean:
	make clean -C libft
	make fclean -C ft_printf
	rm -f $(OBJS)

fclean: clean
	make fclean -C libft
	make fclean -C ft_printf
	rm -f $(NAME) 

re: fclean all

all : $(NAME)
