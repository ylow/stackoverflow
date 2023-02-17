all: stacksmash stacksmash2 emit

stacksmash: stacksmash.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g stacksmash.c -o stacksmash -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector


stacksmash2: stacksmash2.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g stacksmash2.c -o stacksmash2 -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector

emit: emit.c Makefile
	clang -fno-pie -arch x86_64 -mmacosx-version-min=10.15 -g emit.c -o emit -Wno-deprecated-declarations -O0 -std=c99 -fno-stack-protector


