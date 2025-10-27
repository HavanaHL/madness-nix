{config, ...}:
{
  swapDevices = [{
    device = "/var/lib/swapfile";
    size = 8*1024;
    
  }];

  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "lz4";
  };

  boot.kernel.sysctl = { "vm.swappiness" = 10; };

}
