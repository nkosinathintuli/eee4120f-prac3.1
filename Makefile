PROJ=main
PLAT=platforms

CXX=g++

# Linux OS
LIBS=-lOpenCL


all: $(PROJ) $(PLAT)
#.PHONY: main

$(PROJ):$(PROJ).cpp
	$(CXX) -o $@ $^ $(LIBS)

$(PLAT):$(PLAT).cpp
	$(CXX) -o $@ $^ $(LIBS)

runmain: $(PROJ)
	./$(PROJ)

plat: $(PLAT)
	./$(PLAT)

clean:
	rm -f $(PROJ) $(PLAT)
