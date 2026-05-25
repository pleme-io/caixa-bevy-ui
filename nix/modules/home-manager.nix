# nix/modules/home-manager.nix — auto-generated from bevy_ui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_ui; in {
  options.programs.bevy_ui = {
    enable = lib.mkEnableOption "bevy_ui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_ui or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
