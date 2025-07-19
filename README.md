# Bootloader ya Mike na Lingala

A minimal BIOS bootloader that prints a message in Lingala using x86 Assembly.

---

**Liboso, nini?**  
Bootloader ezali programme ya liboso oyo CPU esalaka na yango ntango elakisi komema OS na memori.  
Na projet oyo, tosali bootloader ya mike oyo esalaka na mode 16-bit mpe epesaka mokanda ya Lingala na ecran.

---

**Ndenge ya kotambwisa programme**  
```bash
nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 -drive format=raw,file=boot.bin