#
#    Copyright 2007-2010 Adobe Systems Incorporated
#    Copyright 2018-2019 Chris Cox
#    Distributed under the MIT License (see accompanying file LICENSE_1_0_0.txt
#     or a copy at http://stlab.adobe.com/licenses.html )
#

###################################################
#
# Makefile for C++ benchmarks
#
###################################################


#
# Macros
#

INCLUDE = -I.


# GCC (defaults to Clang/LLVM on MacOS)
#CC = gcc
#CXX = g++


# GCC 8
#CC = gcc-8
#CXX = g++-8


# Clang/LLVM 8
#CC = clang-8
#CXX = clang++-8

CFLAGS = $(INCLUDE) $(OPTLEVEL) 
CPPFLAGS = -std=c++14 $(INCLUDE) $(OPTLEVEL) 

CLIBS = -lm
CPPLIBS = -lm

DEPENDENCYFLAG = -M

REPORT_FILE = report.txt

#
# our target programs
#

BINARIES = machine \
loop_normalize \




#
# Build rules
#

all : $(BINARIES)


SUFFIXES:
.SUFFIXES: .c .cpp


# declare some targets to be fakes without real dependencies

.PHONY : clean dependencies

# remove all the stuff we build

clean : 
		rm -f *.o $(BINARIES) $(REPORT_FILE)


# generate dependency listing from all the source files
# used for double checking problems with headers
# this does NOT go in the makefile

SOURCES = $(wildcard *.c)  $(wildcard *.cpp)
dependencies :   $(SOURCES)
	$(CXX) $(DEPENDENCYFLAG) $(CPPFLAGS) $^

#
# Run the benchmarks and generate a report
#

report:  $(BINARIES)
	echo "##STARTING Version 1.0" > $(REPORT_FILE)
	date >> $(REPORT_FILE)
	echo "##Compiler: $(CC) $(CXX)" >> $(REPORT_FILE)
	echo "##CFlags: $(CFLAGS)" >> $(REPORT_FILE)
	echo "##CPPFlags: $(CPPFLAGS)" >> $(REPORT_FILE)
	echo "System Information collected by program: " >> $(REPORT_FILE)
	./machine >> $(REPORT_FILE)
	./loop_normalize >> $(REPORT_FILE)
	date >> $(REPORT_FILE)
	echo "##END Version 1.0" >> $(REPORT_FILE)

