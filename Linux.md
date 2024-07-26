# 1. System Architecture
## Determine and configure hardware settings
- Enable and disable integrated peripherals.
- Differentiate between the various types of mass storage devices.
- Determine hardware resources for devices.
- Tools and utilities to list various hardware information (e.g. lsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspcilsusb, lspci lsusb, lspcilsusb, lspci lsusb, lspci , etc.)
- Tools and utilities to manipulate USB devices
- Conceptual understanding of sysfs, udev , and dbus
## Boot the system
  - /sys/
  - /proc/
  - /dev/
  - modprobe
  - lsmod
  - lspci
  - lsusb
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






