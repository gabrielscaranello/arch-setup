all:
	@sh ./scripts/all.sh

copy-desktop-config:
	@sh ./scripts/copy-desktop-config.sh

copy-sddm-config:
	@sh ./scripts/copy-sddm-config.sh

copy-timeshift-config:
	@sh ./scripts/copy-timeshift-config.sh

enable-os-prober:
	@sh ./scripts/enable-os-prober.sh

enable-services:
	@sh ./scripts/enable-services.sh

hide-desktop-apps:
	@sh ./scripts/hide-desktop-apps.sh

install-aur-packages:
	@sh ./scripts/install-aur-packages.sh

install-bibata-cursor:
	@sh ./scripts/install-bibata-cursor.sh

install-flatpak-packages:
	@sh ./install-flatpak-packages.sh

install-gnome-extensions:
	@sh ./scripts/install-gnome-extensions.sh

install-nvm:
	@sh ./scripts/install-nvm.sh

install-pacman-packages:
	@sh ./scripts/install-pacman-packages.sh

install-yay:
	@sh ./scripts/install-yay.sh

setup-look:
	@sh ./scripts/setup-look.sh

setup-nvidia-hybrid:
	@sh ./scripts/setup-nvidia-hybrid.sh

setup-nvidia:
	@sh ./scripts/setup-nvidia.sh

setup-swap:
	@sh ./scripts/setup-swap.sh

usermod:
	@sh ./scripts/usermod.sh

