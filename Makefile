PROJ=main

CC=g++

# Linux OS
LIBS=-lOpenCL

# Default Linux
INC_DIRS=/user/local/cuda/include
LIB_DIRS=/user/lib/nvidia-current

$(PROJ): $(PROJ).cpp
	$(CC) -o $@ $^ $(INC_DIRS:%=-I%) $(LIB_DIRS:%=-L%) $(LIBS)

clean:
	rm $(PROJ)

run:
	./$(PROJ)