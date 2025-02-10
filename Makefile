# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kpineda- <kpineda-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/26 23:20:32 by marvin            #+#    #+#              #
#    Updated: 2024/10/14 23:38:18 by kpineda-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB = ar rcs 
NAME = libft.a

CC = gcc
CCFLAGS = -Wall -Wextra -Werror
RM = rm -f

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c\
ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c\
ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c\
ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c\
ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c\
ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c\
ft_putendl_fd.c ft_putnbr_fd.c

OBJ = $(SRC:%.c=%.o)
INCLUDE = libft.h

BONUSSRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c\
ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c\
ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BONUSOBJ = $(BONUSSRC:%.c=%.o)

all : $(NAME)

$(NAME) : $(OBJ) $(INCLUDE)
	$(LIB) $(NAME) $(OBJ)

bonus :
		make SRC="$(SRC) $(BONUSOBJ)"

%.o : %.c
	@$(CC) $(CCFLAGS) -c $< -o $@
clean:
	@$(RM) $(OBJ) $(BONUSOBJ)
fclean: clean
	$(RM) $(NAME)
re: fclean all bonus

.PHONY: all bonus clean fclean re