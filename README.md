# functions in x86_64 Assembly

a simple example showing how to create and call a function in assembly , using the system v amd64 calling convention

## what it does

calls a function that adds two numbers together and stores the result , no c , no libc , just pure asm

## how it works

arguments go in `rdi` and `rsi` , the function sets up a stack frame with `rbp` , does the addition , returns the result in `rax`

## watch the explanation

i made a video explaining how functions work in assembly step by step :

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch-red?logo=youtube)](https://www.youtube.com/watch?v=53csf3DTsSE&t=676s)

## build & run

```bash
nasm -f elf64 function.asm -o function.o
ld function.o -o function
./function
```
