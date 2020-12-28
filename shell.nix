{ pkgs ? import <nixpkgs> {
  overlays = [
    (import (builtins.fetchTarball
      "https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz"))
  ];
} }:
with pkgs;
let

  rust = pkgs.latest.rustChannels.nightly.rust;

in pkgs.mkShell { buildInputs = with pkgs; [ cargo-watch rust-analyzer rust cargo-edit hello ]; }
