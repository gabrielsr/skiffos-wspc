

SkiffOS dependencies
$ brew install coreutils
$ echo "alias readlink=greadlink" >> ./bash
$ brew install gcc
$ ln /usr/local/bin/gcc-11 /usr/local/bin/gcc
$ brew install parted

--
ubuntu
sudo apt update && sudo apt upgrade
sudo apt install make gcc flex

libncurses-dev

blkid -> diskutil list

based on https://forum.pine64.org/showthread.php?tid=15944

\SkiffOS - > base system dir


my_docker_config # has all my docker container configs, files and scripts
    └── root_overlay
    # root overlay , all these file and directories will be overlaid upon boot and be placed in their respective folders in the live environment .
       ├── etc
       │   ├── skiff
       │   │   └── authorized_keys #  where you can place your public ssh keys , so you have ssh access upon boot.
       │   │       └── my-key.pub 
       │   ├── systemd
       │   │   └── system
       │   │       ├── fan-speed.service
       │   │       ├── mnt-ssd1.mount 
                    # systemd .mount files to mount my ssd's on startup similar to how an "fstab" would work.
                    # name of the mount file must be the path to the mount point with each folder separated by a hyphen 
       │   │       └── multi-user.target.wants
       │   │           ├── fan-speed.service -> ../fan-speed.service
       │   │           ├── mnt-ssd1.mount -> ../mnt-ssd1.mount
       │   │           └── mnt-ssd2.mount -> ../mnt-ssd2.mount
       │   └── udev #  udev script triggered by some udev event,
       │       └── rules.d
       │           └── 99-marvell.rules
       └── opt
           ├── mydocker
           │   ├── caddy
           │   │   ├── caddy_data
           │   │   └── Caddyfile
           │   ├── docker-compose.yml
           │   ├── esphome
           │   │   └── config
           │   ├── homeassistant
           │   │   ├── automations.yaml
           │   │   ├── configuration.yaml
           │   │   ├── groups.yaml
           │   │   └── www
           │   │       ├── picone.PNG
           │   │       └── pictwo.PNG
           │   ├── jellyfin
           │   ├── radicale
           │   │   ├── config
           │   │   │   └── config
           │   │   ├── data
           │   │   └── log
           │   └── snikket
           │       ├── acme_challenges
           │       ├── snikket.conf
           │       └── snikket_data
           └── rockpro64_fan
               └── fan_script.sh