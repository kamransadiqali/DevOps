# 1. System Architecture
## Determine and configure hardware settings
- Enable and disable integrated peripherals.
- Differentiate between the various types of mass storage devices.
- Determine hardware resources for devices.
- Tools and utilities to list various hardware information (e.g. lsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspci lsusb, lspcilsusb, lspci lsusb, lspci , etc.)
- Tools and utilities to manipulate USB devices
- Conceptual understanding of sysfs, udev , and dbus
  - /sys/
  - /proc/
  - /dev/
  - modprobe
  - lsmod
  - lspci
  - lsusb
 ## Boot the system 
- Provide common commands to the boot loader and options to the kernel at boot time.
- Demonstrate knowledge of the boot sequence from BIOS/UEFI to boot completion.
- Understand SysV init and systemd.
- Awareness of Upstart 
- Check book events in the log files
  - dmesg
  - journalctl
  - BIOS
  - UEFI
  - bootloader
  - kernel
  - initramfs
  - init
  - SysV init
  - systemd
## Change runlevels/boot targets and shut down or reboot system
- Set the default runlevel or boot target.
- Change between runlevels/boot targets including single-user mode.
- Shut down and reboot from the command line.
- Alert users before switching runlevels/boot targets or other major system events.
- Properly terminate processes.
- Awareness of acpid
  - /etc/inittab
  - shutdown
  - init
  - /etc/init.d/
  - telinit
  - systemd
  - systemctl
  - /etc/systemd/
  - /usr/lib/systemd/
  - Wall
# 2. Linux Installation and Package Management
## Design hard disk layout
- Allocate filesystems and swap space to separate partitions or disks.
- Tailor the design to the intended use of the system.
- Ensure the /boot partition conforms to the hardware architecture requirements for booting.
- Knowledge of basic features of LVM
  - /(root) filesystem
  - /var
  - filesystem
  - /home filesystem
  - /boot filesystem
  - EFI System Partition (ESP)
  - mount points
  - partitions
  - swap space
## Install a boot manager
- Provide alternative boot locations and backup boot options.
- Install and configure a boot loader such as GRUB Legacy.
- Perform basic configuration changes for GRUB2.
- Interact with the boot loader.
  - menu.lst, grub.cfg , and grub.conf
  - grub-install
  - grub-mkconfig
  - MBR
## Manage shared libraries
- Identify shared libraries.
- Identify the typical locations of system libraries.
- Load shared libraries
  - ldd
  - ldconfig
  - /etc/ld.so.conf
  - LD_LIBRARY_PATH
## Use Debian package management
- Install, upgrade, and uninstall Debian binary packages.
- Find packages containing specific files or libraries which may or may not be installed.
- Obtain package information like version, content, dependencies, package integrity, and installation status (whether or not the package is installed).
- Awareness of apt
  - /etc/apt/sources.list
  - dpkg
  - dpkg-reconfigure
  - apt-get
  - apt-cache
## Use RPM and yum package management
- Install, re-install, upgrade, and remove packages using RPM, yum, and zypper.
- Obtain information on RPM packages such as version, status, dependencies, integrity, and signatures.
- Determine what files a package provides, as well as find which package a specific file comes from.
- Awareness of dnf
  - rpm
  - rpm2cpio
  - /etc/yum.conf
  - /etc/yum.repos.d/
  - Yum
  - zypper
## Linux as a virtualization guest
- Understand the general concept of virtual machines and containers.
- Understand common elements of virtual machines in an IaaS cloud, such as computing instances, block storage, and networking.
- Understand unique properties of a Linux system that have to change when a system is cloned or used as a template.
- Understand how system images are used to deploy virtual machines, cloud instances, and containers.
- Understand Linux extensions that integrate Linux with a virtualization product.
- Awareness of cloud-init
  - Virtual machine
  - Linux container
  - Application container
  - Guest drivers
  - SSH host keys
  - D-Bus machine id
# 3. GNU and UNIX Commands
## Work on the command line
- Use single shell commands and one-line command sequences to perform basic tasks on the command line.
- Use and modify the shell environment including defining, referencing, and exporting environment variables.
- Use and edit command history.
- Invoke commands inside and outside the defined path
  - bash
  - echo
  - env
  - export
  - pwd
  - set
  - unset
  - type
  - which
  - man
  - uname
  - history
  - .bash_history
  - Quoting
## Process text streams using filters
- Send text files and output streams through text utility filters to modify the output using standard UNIX commands found in the GNU textutils package
  - bzcat
  - cat
  - cut
  - head
  - less
  - md5sum
  - nl
  - od
  - paste
  - sed
  - sha256sum
  - sha512sum
  - sort
  - split
  - tail
  - tr
  - uniqwc
  - xzcat
  - zcat
## Perform basic file management
- Copy, move, and remove files and directories individually.
- Copy multiple files and directories recursively.
- Remove files and directories recursively.
- Use simple and advanced wildcard specifications in commands.
- Use find to locate and act on files based on type, size, or time.
- Use tar, cpio, and dd
  - cp
  - find
  - mkdir
  - mv
  - filegzip
  - gunzip
  - ls
  - rm
  - rmdir
  - touch
  - tar
  - cpio
  - bzip2
  - bunzip2
  - xz
  - unxz
  - file globbing
  - dd
## Use streams, pipes, and redirects
- Redirect standard input, standard output, and standard error.
- Pipe the output of one command to the input of another command.
- Use the output of one command as arguments to another command.
- Send output to both stdout and a file
  - tee
  - xargs
## Create, monitor, and kill processes
- Run jobs in the foreground and background.
- Signal a program to continue running after logout.
- Monitor active processes.
- Select and sort processes for display.
- Send signals to processes.
  - &
  - bg
  - fg
  - jobs
  - uptime
  - kill
  - nohup
  - ps
  - top
  - free
  - pkill
  - killall
  - watch
  - screen
  - tmux
  - pgrep
## Modify process execution priorities
- Know the default priority of a job that is created.
- Run a program with higher or lower priority than the default.
- Change the priority of a running process.
  - niceps
  - renice
  - top
## Search text files using regular expressions
- Create simple regular expressions containing several notational elements.
- Understand the differences between basic and extended regular expressions.
- Understand the concepts of special characters, character classes, quantifiers, and anchors.
- Use regular expression tools to perform searches through a filesystem or file content.
- Use regular expressions to delete, change, and substitute text.
  - grep
  - egrep
  - fgrep
  - sed
  - regex(7)
## Basic file editing
- Navigate a document using vi.
- Understand and use Vi modes.
- Insert, edit, delete, copy, and find text in Vi.
- Be aware of Emacs, nano, and vim.
- Configure the standard editor.
  - vi
  - /, ?
  - h,j,k,l
  - i, o, a
  - d, p, y, dd, yy
  - ZZ, :w!, :q!
  - EDITOR
# 4. Devices, Linux Filesystems, Filesystem Hierarchy Standard
## Create partitions and filesystems
- Manage MBR and GPT partition tables.
- Use various mkfs commands to create various filesystems such as:
  - ext2/ext3/ext4
  - XFS
  - VFAT
  - exFAT
- Basic feature knowledge of Btrfs , including multi-device filesystems, compression, and subvolumes
  - fdisk
  - gdisk
  - parted
  - mkfs
  - mkswap
## Maintain the integrity of filesystems
- Verify the integrity of filesystems.
- Monitor free space and inodes.
- Repair simply filesystem problems.
  - du
  - df
  - fsck
  - e2fsck
  - mke2fs
  - tune2fs
  - xfs_repair
  - xfs_fsr
  - xfs_db
## Control mounting and unmounting of filesystems
- Manually mount and unmount filesystems.
- Configure filesystems mounting on bootup.
- Configure user mountable removable filesystems.
- Use labels and UUIDs for identifying and mounting filesystems.
- Awareness of systemd mount units
  - /etc/fstab
  - /media/
  - mountumount
  - blkid
  - lsblk
## Manage file permissions and ownership
- Manage access permissions on regular and special files as well as directories.
- Use access modes such as suid, sgid, and the sticky bit to maintain security.
- Know how to change the file creation mask.
- Use the group field to grant file access to group members.
  - chmod
  - umask
  - chown
  - chgrp
## Create and change hard and symbolic links
- Create links.
- Identify hard and/or soft links.
- Copying versus linking files
- Use links to support system administration tasks.
  - ln
  - ls
## Find system files and place files in the correct location
- Understand the correct locations of files under the FHS.
- Find files and commands on a Linux system.
- Know the location and purpose of important file and directories as defined in the FHS.
  - find
  - locate
  - updatedb
  - whereis
  - which
  - type
  - /etc/updatedb.conf
# 5. Shells and Shell Scripting
## Customize and use the shell environment
- .
- source
- /etc/bash.bashrc
- /etc/profile
- env
- export
- set
- unset
- ∼/.bash_profile
- ∼/.bash_login
- ∼/.profile
- ∼/.bashrc
- ∼/.bash_logout
- function
- alias
## Customize or write simple scripts
- for
- while
- test
- if
- read
- seq
- exec
- ||
- &&
# 6. User Interfaces and Desktops
## Install and configure X11
- /etc/X11/xorg.conf
- /etc/X11/xorg.conf.d/
- ~/.xsession-errors
- xhost
- xauth
- DISPLAY
- X
## Graphical desktops
- KDE
- Gnome
- Xfce
- X11
- XDMCP
- VNC
- Spice
- RDP
## Accessibility
- High con-trast/large print desktop themes
- Screen reader
- Braille display
- Screen magnifier
- On-screen key-board
- Sticky/repeat keys
- Slow/bounce/toggle keys
- Mouse keys
- Gestures
- Voice recognition
# 7. Administrative Tasks
## Manage user and group accounts and related system files
- /etc/passwd
- /etc/shadow
- /etc/group
- /etc/skel/
- chage
- getent
- groupadd
- groupdel
- groupmod
- passwd
- useradd
- userdel
- usermod
## Automate system admin-istration tasks by schedul-ing jobs  
- /etc/cron.{d,daily,hour-ly,monthly,weekly}/
- /etc/at.deny
- /etc/at.allow
- /etc/crontab
- /etc/cron.allow
- /etc/cron.deny
- /var/spool/cron
- crontab
- at
- atq
- atrm
- systemctl
- systemd-run
## Localization and internationalization
- /etc/timezone
- /etc/localtime
- /usr/share/zoneinfo/
- LC_*
- LC_ALL
- LANG
- TZ
- /usr/bin/locale
- tzselect
- timedatectl
- date
- iconv
- UTF-8
- ISO-8859
- ASCII
- Unicode













