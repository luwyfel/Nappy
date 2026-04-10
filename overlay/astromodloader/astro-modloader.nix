let
  pkgs = import <nixpkgs> { };

  inherit (pkgs) lib;

  astro-modloader =
    {
      stdenvNoCC,
      fetchurl,
      autoPatchelfHook,

      openssl_1_1,
      zlib,
      libgcc,

      libxkbcommon,
      libGL,

      wayland,

      libXcursor,
      libXrandr,
      libXi,
      libX11,
    }:
    stdenvNoCC.mkDerivation (finalAttrs: {
      pname = "astro-modloader";
      version = "0.1.15";

      src = fetchurl {
        url = "https://github.com/AstroTechies/astro_modloader/releases/download/${finalAttrs.version}/astro_modloader-linux-x64";
        hash = "sha256-ta4x5N3J/3vQ8sEcQTcSepKGxnx2p0bOdlmJyqqe4sQ=";

        executable = true;
      };

      # https://nixos.org/manual/nixpkgs/unstable/#var-stdenv-phases
      phases = [
        "installPhase"
        "fixupPhase"
      ];

      nativeBuildInputs = [
        autoPatchelfHook
      ];

      buildInputs = [
        zlib
        openssl_1_1
        libgcc
      ];

      # https://nixos.org/manual/nixpkgs/unstable/#setup-hook-autopatchelfhook
      runtimeDependencies = [
        libxkbcommon
        libGL

        # uncomment for wayland support
        wayland

        # uncomment for x11 support
        # libXcursor
        # libXrandr
        # libXi
        # libX11
      ];

      installPhase = ''
        runHook preInstall
        mkdir -p $out/bin
        cp $src $out/bin/astro-modloader
        runHook postInstall
      '';
    });
in
pkgs.callPackage astro-modloader { }
