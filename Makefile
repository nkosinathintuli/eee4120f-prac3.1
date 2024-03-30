PROJ=main
PLAT=platforms

CXX=g++

# Linux OS
LIBS=-lOpenCL


#all: $(PROJ) $(PLAT)
#.PHONY main

$(PROJ):$(PROJ).cpp
	$(CXX) -o $@ $^ $(LIBS)

$(PLAT):$(PLAT).cpp
	$(CXX) -o $@ $^ $(LIBS)

run_main: $(PROJ)
	./$(PROJ)

run_plat: $(PLAT)
	./$(PLAT)

clean:
	rm -f $(PROJ) $(PLAT)
