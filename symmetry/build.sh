#!/bin/bash

export CC=${PREFIX}/bin/gcc

make

mkdir ${PREFIX}/bin
cp ${SRC_DIR}/symmetry ${PREFIX}/bin
chmod +x ${PREFIX}/bin/symmetry