{ username, email, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = username;
        email = email;
      };
      credential.helper = "store";
      push.autoSetupRemote = true;
    };
  };
}
