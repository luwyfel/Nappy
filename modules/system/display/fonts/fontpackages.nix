{ pkgs, lib, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts noto-fonts-color-emoji noto-fonts-cjk-sans
    fira-code fira-code-symbols fira-sans
    material-symbols material-icons
    jetbrains-mono
    dejavu_fonts
    liberation_ttf
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}
