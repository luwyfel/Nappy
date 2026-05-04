{ username }:
{
  enable = true;
  version = "main";
  profiles.${username} = {
    enableAllSections = true;
    settings = {
      peskyfox.enable = true;
      securefox.enable = true;
      smoothfox.natural-smooth-scrolling-v3.enable = true;
    };
  };
}
