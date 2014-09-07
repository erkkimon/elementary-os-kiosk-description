# Setting Up Kiosk

Boot Elementary OS Live environment on the kiosk machine and start the installation. Go through the installation process setting the following details. Note, that this repo is work in process and these details are for the target environment. This repo will be made more modular and portable later.
- Language: Finnish
- Install third party software: yes
- Timezone: Helsinki
- Keyboard layout: Finnish 
- User information:
  - Name: edu-admin
  - Computer name: edu-kiosk-XXX
  - Username: edu-admin
  - Password: something good and rememberable

When the system has been succesfully installed on the kiosk, reboot. When the kiosk has rebooted, run the following command. 

```
wget https://raw.githubusercontent.com/erkkimon/elementary-os-kiosk-description/master/setup.sh && bash setup.sh && rm setup.sh
```

After this the system should be set up in the desired state. Some of the changes will be applied right away, and some of them will come into effect after the next reboot.

# Setting up the hardware

In the repository there are ready-made scripts for setting up certain hardware, such as BCM4311 wireless adapter. The hardware-related scripts are located in *tools* folder. Just run the script, but remember that they don't ask you much &ndash; they just get the stuff done, and you run them at your own risk. So make sure you have read the scripts before running them.
