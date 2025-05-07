CC = arm-elf-gcc
CFLAGS = -O0 -g -c
LDFAGS = ""
ASFLAGS = -g -c
OBJS = mainfibo.o fibo.o
NAME = testfibo

$(NAME).elf: $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(NAME).elf
	
%.o: %.s
	$(CC) $(ASFLAGS) $< -o $@
	
%.o: %.S
	$(CC) $(ASFLAGS) $< -o $@
	
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
	
