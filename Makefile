stackoverflow: stackoverflow.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g stackoverflow.c -o stackoverflow -Wno-deprecated-declarations -O0 -std=c99


all:
	stackoverflow

