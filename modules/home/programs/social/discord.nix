{ ... }:
{
  programs.nixcord = {
    enable = true;
    discord = {
      vencord.enable = true;
      openASAR.enable = true;
    };
    quickCss = "";
    config = {
      useQuickCss = true;
      themeLinks = ["https://catppuccin.github.io/discord/dist/catppuccin-mocha-lavender.theme.css"];
      frameless = true;
      plugins = {
        fakeNitro.enable = true;
        BlurNSFW.enable = true;
        ClearURLs.enable = true;
        dearrow.enable = true;
        loadingQuotes.enable = true;
        mentionAvatars.enable = true;
        noF1.enable = true;
        noMosaic.enable = true;
        noReplyMention.enable = true;
        typingTweaks.enable = true;
        youtubeAdblock.enable = true;
      };
    };
  };
}
