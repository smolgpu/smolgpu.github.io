{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_22 # Node.js (v22+ for Array.fromAsync support)
    pnpm # pnPm
    just # Just
    pre-commit # Pre-commit
    nixfmt # Nix formatter
  ];

  # Shell hook to set up environment
  shellHook = ''
    just install
  '';
}
