#!/bin/bash
export LINKFLAGS="-undefined dynamic_lookup"
export CFLAGS="-I$PREFIX/include -L$PREFIX/lib"

./waf configure                 \
    --prefix=$PREFIX            \
    --nopyc                     \
    --nopyo
./waf install