{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Define the packages you want in your environment
  buildInputs = with pkgs; [
    bash
    git
    python3
    kitty
    nano
    neovim
    yt-dlp
    chezmoi
    stow
    gnupg
    gh
    fastfetch
    rclone
    elixir
    mix2nix
  ];

  # Optional: Set environment variables or run shell commands
  shellHook = ''
    echo "Welcome to your Nix shell environment!"
    export PS1="nix-shell:\w\$ "  # Customize the prompt
  '';
}
