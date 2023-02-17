all: stackoverflow stackoverflow2 emit

stackoverflow: stackoverflow.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g stackoverflow.c -o stackoverflow -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector


stackoverflow2: stackoverflow2.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g stackoverflow2.c -o stackoverflow2 -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector

emit: emit.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g emit.c -o emit -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector


