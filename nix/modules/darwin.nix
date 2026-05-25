# nix/modules/darwin.nix — auto-generated from bevy_ui.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_ui; in {
  options.services.bevy_ui = {
    enable = lib.mkEnableOption "bevy_ui";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_ui or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
