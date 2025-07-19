# Bootloader ya Mike na Lingala

**Liboso, nini?**  
Bootloader ezali programme ya liboso oyo CPU esalaka na yango ntango elakisi komema OS na memori.  
Na projet oyo, tosali bootloader ya mike oyo esalaka na mode 16-bit mpe epesaka mokanda ya Lingala na ecran.

**Ndenge ya kotambwisa programme**  
1. Somba NASM (Netwide Assembler) na https://www.nasm.us/  
2. Somba QEMU mpo na koluka kotambwisa (https://qemu.weilnetz.de/)  
3. Kolisala assemble:  
   ```bash
   nasm -f bin boot.asm -o boot.bin
