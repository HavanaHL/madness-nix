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
    priority = 5;
  };

  boot.kernel.sysctl = { "vm.swappiness" = 10; };

}
