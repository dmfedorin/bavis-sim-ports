SRC_DIR=src
IMED_DIR=imed
BUILD_DIR=build

# bavis.s
as -o $IMED_DIR/bavis.s.o $SRC_DIR/bavis.s
ld -o $BUILD_DIR/bavis_s $IMED_DIR/bavis.s.o -e main
