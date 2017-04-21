## Runlevel

    Runlevels are part of SysVinit and Upstart
    
    |          |               1|
    | 0-Halt   |  Reboot   6    |


    2 Ubuntu
    3,5 OpenSuse

    Property inside /etc/inittab
    
    ID-RUNLEVEL-INITDEFAULT
    
### Operation runlevel

    chkconfig is for scheduling a daemon 
    service atd status
    
    
    Target in systemd (new confi)
    
    poweroff.target  
    rescue.target
    mutiluser.target
    graphical.target
    reboot.target
    
    
    Runlevel with SysVinit(legacy configuration)
    0
    1
    2,3,4
    5
    6
     
#### Retrieve current runlevel

    systemctl get-default
    systemctl set-default multi-user.target
     (this create a symlink to /lib/systemd)
     
#### Activate or disable
    
    sytemctl enable atd.service
    systemctl disable atd.service
    
#### Using init or telinit

    Using the systemd we can change the runlevel using the isolate command with the systemctl directive
    
    systemcel isolate multi-user.target
    
    who -r or runlevel

    telinit 3
    
    
#### Recommend way to shutdown pc
     
      shutdown- h now # Halts the system
      shutdown -r now # Reboots
      shutdown -h +10 #
      shutdown -r +10 #
      shutdown -c # Cancel an impeding operation
      
      To send messages the command shutdown we use the Linux command wall to notify users.
      You too can use wall independelty of the command shutdown
      
