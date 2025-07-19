; boot.asm - Bootloader ya mike na Lingala

[BITS 16]          ; Mode 16-bit ya CPU
[ORG 0x7C00]       ; BIOS ebandaka awa na memori

start:
    mov si, msg      ; Tinda adresse ya maloba
    call print_string

tikala:
    jmp tikala       ; Tikalaka awa, kokoba kozela

; Routine ya kolakisa maloba na ecran
print_string:
    mov ah, 0x0E     ; Fonction ya BIOS ya kosala teletype (kokoma na ecran)
kosolola:
    lodsb            ; Komona eloko na [si] mpe kokoma yango na al, sima si++
    cmp al, 0        ; Soki eloko ezali zero, kokanga
    je sima
    int 0x10         ; Kosolola na BIOS mpo na kokoma na ecran
    jmp kosolola
sima:
    ret

msg db 'Bootloader ya Lingala, esilaka awa!', 0

times 510-($-$$) db 0
dw 0xAA55          ; Signature ya bootloader
