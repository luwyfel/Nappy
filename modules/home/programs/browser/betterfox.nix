{ username }:
{
  enable = true;
  version = "main";
  profiles.${username} = {
    enableAllSections = true;
    settings = {
      fastfox.enable = true;
      peskyfox.enable = true;
      securefox.enable = true;
      smoothfox.natural-smooth-scrolling-v3.enable = true;
    };
  };
}
