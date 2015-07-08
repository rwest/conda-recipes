#!/bin/bash
export LINKFLAGS="-undefined dynamic_lookup"
export CFLAGS="-I$PREFIX/include -L$PREFIX/lib -I${PREFIX}/include/python${PY_VER}"

./waf configure                 \
    --prefix=$PREFIX            \
    --nopyc                     \
    --nopyo
./waf install

mv $SP_DIR/cairo/lib_cairo.dylib $SP_DIR/cairo/_cairo.so
# the above line may need fixing for linux, which may not use .dylib extension
