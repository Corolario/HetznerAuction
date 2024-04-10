# WinHtz
Instalação do Windows em servidor dedicado Server Auction da Hetzner

Inicia pelo Rescue.
Baixa a iso.
parted /dev/nvme0n1
mklabel gpt
Em outro terminal executa: ssh -L 8888:127.0.0.1:5901 root@178.63.84.248
qemu-system-x86_64 -bios /usr/share/ovmf/OVMF.fd -enable-kvm -cpu host -smp 4 -m 8000 -usbdevice tablet -boot d -cdrom Win.iso -drive file=/dev/nvme0n1,format=raw,media=disk -vnc 127.0.0.1:1
Instala o Windows.
Instala o script bat para reiniciar caso não tenha acesso a internet.
Instala driver de rede.
