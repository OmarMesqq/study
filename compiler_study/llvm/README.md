## Low Level Virtual Machine 
To compile IR code (`.ll`) to machine code, 
use LLVM's static compiler: 

```shell 
llc hello_world.ll
```

which generates an assembly (`.s`) that
can be assembled and linked using `clang` and `ld` for instance
