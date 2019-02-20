#Make File for DBeta Generator
CXXFLAGS += $(shell clhep-config --include)
CXXFLAGS += $(shell root-config --cflags)
ROOTLIB := $(shell root-config --libs)
CLHEPLIB := $(shell clhep-config --libs)
LIBS += -L. $(CLHEPLIB)  $(ROOTLIB)

%:%.cc
	$(CXX) $(CXXFLAGS) $(ROOTCFLAG) $< -o $@ $(LIBS)

TARGETS= DBeta

all: $(TARGETS)

clean:
	rm -rf $(TARGETS)
