CXX = g++
FLAGS = -std=c++0x -O2 -Wall -Wno-unused-const-variable -g

%: %.C; $(CXX) $(FLAGS) -D LOCAL -o $(@) $(^)
%: %.cc; $(CXX) $(FLAGS) -D LOCAL -o $(@) $(^)
%: %.cpp; $(CXX) $(FLAGS) -D LOCAL -o $(@) $(^)
