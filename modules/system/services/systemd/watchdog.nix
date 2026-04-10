{ ... }:
{
  systemd.settings.Manager = {
    RuntimeWatchdogSec = 0;
    RebootWatchdogSec = 0;
    KExecWatchdogSec = 0;
  };
}
