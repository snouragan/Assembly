#target: prerequisite

NAME=assembly

$(NAME): $(NAME).o
	ld -o $(NAME) $(NAME).o
$(NAME).o: $(NAME).s
	as -o $(NAME).o $(NAME).s
clean:
	rm *.o $(NAME)

