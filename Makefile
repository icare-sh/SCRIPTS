install:
	sudo apt-get install qemu qemu-kvm qemu-system-x86 qemu-utils
download:
	wget https://releases.ubuntu.com/22.04/ubuntu-22.04.1-live-server-amd64.iso
run: download
	qemu-system-x86_64 -enable-kvm -m 2048 \
	-hda ubuntu-22.04.1-desktop-amd64.iso \
	-cdrom ubuntu-22.04.1-desktop-amd64.iso \
	-boot d -vga std -net nic -net user,hostfwd=tcp::2222-:22

