#	Name		#

NAME = libasm.a

#	Compiler	#

CC = nasm

#	Flags		#

CFLAGS = -f macho64

#	Sources		#

SRC_PATH = ./srcs
SRC_NAME = ft_strlen.s \
		   ft_strdup.s \
		   ft_strcpy.s \
		   ft_write.s \
		   ft_read.s \
		   ft_strcmp.s
SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))

#	Objects		#

OBJ_PATH = ./.objs
OBJ_NAME = $(SRC_NAME:.s=.o)
OBJ 	 = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

#####################################################################################

all : $(NAME)

$(NAME) : $(OBJ)
		ar rcs $(NAME) $(OBJ)
$(OBJ_PATH)/%.o : $(SRC_PATH)/%.s
	@mkdir -p $(OBJ_PATH)
	$(CC) $(CFLAGS) -o $@ -s $<

clean : 
	rm -rf $(OBJ_PATH)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY: all clean fclean re
