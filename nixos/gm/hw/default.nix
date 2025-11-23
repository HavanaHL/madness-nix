{config, pkgs, ...}:
{
  imports = [
    ./hc.nix
    ./pipewire.nix
    ./swap.nix
    ./vp.nix
  ];
  # Udev
  services.udev = {
	    enable = true;
	    extraRules = ''
		    ACTION=="add", SUBSYSTEM=="sound", KERNEL=="card*", DRIVERS=="snd_hda_intel", TEST!="/run/udev/snd-hda-intel-powersave", \
    			RUN+="${pkgs.bash}/bin/bash -c 'touch /run/udev/snd-hda-intel-powersave; \
        			[[ $$(cat /sys/class/power_supply/BAT0/status 2>/dev/null) != \"Discharging\" ]] && \
        			echo $$(cat /sys/module/snd_hda_intel/parameters/power_save) > /run/udev/snd-hda-intel-powersave && \
        			echo 0 > /sys/module/snd_hda_intel/parameters/power_save'"

		    SUBSYSTEM=="power_supply", ENV{POWER_SUPPLY_ONLINE}=="0", TEST=="/sys/module/snd_hda_intel", \
    			RUN+="${pkgs.bash}/bin/bash -c 'echo $$(cat /run/udev/snd-hda-intel-powersave 2>/dev/null || \
        			echo 10) > /sys/module/snd_hda_intel/parameters/power_save'"

		    SUBSYSTEM=="power_supply", ENV{POWER_SUPPLY_ONLINE}=="1", TEST=="/sys/module/snd_hda_intel", \
    			RUN+="${pkgs.bash}/bin/bash -c '[[ $$(cat /sys/module/snd_hda_intel/parameters/power_save) != 0 ]] && \
        			echo $$(cat /sys/module/snd_hda_intel/parameters/power_save) > /run/udev/snd-hda-intel-powersave; \
        			echo 0 > /sys/module/snd_hda_intel/parameters/power_save'"

		    KERNEL=="rtc0", GROUP="audio"
		    KERNEL=="hpet", GROUP="audio"

		    DEVPATH=="/devices/virtual/misc/cpu_dma_latency", OWNER="root", GROUP="audio", MODE="0660"

		    # HDD
		    ACTION=="add|change", KERNEL=="sd[a-z]*", ATTR{queue/rotational}=="1", \
    			ATTR{queue/scheduler}="bfq"
	    '';
   }; 
}
