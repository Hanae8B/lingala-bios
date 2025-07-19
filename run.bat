@echo off
echo ===== Assembling bootloader =====
nasm -f bin boot.asm -o boot.bin

echo ===== Launching QEMU =====
qemu-system-x86_64 -drive format=raw,file=boot.bin

pause
