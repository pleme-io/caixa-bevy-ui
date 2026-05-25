# nix/modules/nixos.nix — auto-generated from bevy_ui.caixa.lisp
# description: "A custom ECS-driven UI framework built specifically for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_ui;
in {
  options.services.bevy_ui = {
    enable = lib.mkEnableOption "bevy_ui";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_ui or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
