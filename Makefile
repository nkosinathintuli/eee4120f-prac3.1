PROJ=main
PLAT=platforms

CXX=g++

# Linux OS
LIBS=-lOpenCL

# Default Linux
INC_DIRS=/user/local/cuda/include
LIB_DIRS=/user/lib/nvidia-current

#all: $(PROJ) $(PLAT)

$(PROJ):$(PROJ).cpp
	$(CXX) -o $@ $^ $(INC_DIRS:%=-I%) $(LIB_DIRS:%=-L%) $(LIBS)

$(PLAT):$(PLAT).cpp
	$(CXX) -o $@ $^ $(INC_DIRS:%=-I%) $(LIB_DIRS:%=-L%) $(LIBS)

run_main: $(PROJ)
	./$(PROJ)

run_plat: $(PLAT)
	./$(PLAT)

clean:
	rm -f $(PROJ) $(PLAT)
