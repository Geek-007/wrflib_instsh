#!/bin/sh

export FC=ifort
export F77=ifort
export CC=icc
export CXX=icpc
export CPP='icc -E'
export CXXCPP='icpc -E'
export CPPFLAGS='-DNDEBUG -DpgiFortran'

./configure --prefix=/usr/local/netcdf-3.6.3-intel 2>&1 | tee configure.log
make 2>&1 | tee make.log
