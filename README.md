# Simple obfuscation assembly program

## Intro:  
This program obfuscates the string "hello world" by doing XOR operation with certain value.  

After the obfuscation, the obfuscated string is recovered back to original string "hello world"  
by repeating XOR operation with the same value that we used to obfuscate.

## Working environment:
- VMware Workstaion 12 Player
- Ubuntu 14.04.5 LTS
- gdb-7.7.1

## Files description:
- Report.pdf: report about obfuscation and recovery process
- obfus.asm: x-86 assembly code file that manages obfuscation
- obfus.o: object file of obfus.asm
- obfus.out: executable file of obfus.asm (a.out in report)
- recov.asm: x-86 assembly code file that manages recovery
- recov.o: object file of recov.asm
- recov.out: executable file of recov.asm (a.out in report)
