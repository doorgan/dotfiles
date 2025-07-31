sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)

nix-env -i chezmoi

chezmoi init --apply https://github.com/doorgan/dotfiles.git

nix run home-manager/master -- init --switch

home-manager build
