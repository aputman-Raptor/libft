# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aputman <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/04 14:40:25 by aputman           #+#    #+#              #
#    Updated: 2017/01/03 17:25:26 by aputman          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRC = ft_atoi.c\
	 ft_bzero.c\
	 ft_factorial.c\
	 ft_find_next_prime.c\
	 ft_isalnum.c\
	 ft_isalpha.c\
	 ft_isascii.c\
	 ft_isdigit.c\
	 ft_isprime.c\
	 ft_isprint.c\
	 ft_isspace.c\
	 ft_itoa.c\
	 ft_lstadd.c\
	 ft_lstdel.c\
	 ft_lstdelone.c\
	 ft_lstiter.c\
	 ft_lstmap.c\
	 ft_lstnew.c\
	 ft_memalloc.c\
	 ft_memccpy.c\
	 ft_memchr.c\
	 ft_memcmp.c\
	 ft_memcpy.c\
	 ft_memdel.c\
	 ft_memmove.c\
	 ft_memset.c\
	 ft_putchar.c\
	 ft_putchar_fd.c\
	 ft_putendl.c\
	 ft_putendl_fd.c\
	 ft_putnbr.c\
	 ft_putnbr_fd.c\
	 ft_putstr.c\
	 ft_putstr_fd.c\
	 ft_sqrt.c\
	 ft_strcat.c\
	 ft_strchr.c\
	 ft_strclr.c\
	 ft_strcmp.c\
	 ft_strcpy.c\
	 ft_strdel.c\
	 ft_strdup.c\
	 ft_strequ.c\
	 ft_striter.c\
	 ft_striteri.c\
	 ft_strjoin.c\
	 ft_strlcat.c\
	 ft_strlen.c\
	 ft_strmap.c\
	 ft_strmapi.c\
	 ft_strncat.c\
	 ft_strncmp.c\
	 ft_strncpy.c\
	 ft_strnequ.c\
	 ft_strnew.c\
	 ft_strnstr.c\
	 ft_strrchr.c\
	 ft_strsplit.c\
	 ft_strstr.c\
	 ft_strsub.c\
	 ft_strtrim.c\
	 ft_tolower.c\
	 ft_toupper.c\
	 get_next_line.c\
	 ft_strrealloc.c

OBJ = $(addprefix $(OBJDIR), $(SRC:.c=.o))

OBJDIR = ./obj/

all: obj $(NAME)

obj:
	@mkdir $(OBJDIR)

$(OBJDIR)%.o:%.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): libft.h $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "Library successfully builded"

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re