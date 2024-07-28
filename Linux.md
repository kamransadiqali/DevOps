![linux](https://github.com/user-attachments/assets/f503e642-55cc-42d1-ab79-eeeb4c6f9d8f)
> [!NOTE]
> Linux is both an open-source Unix-like kernel and a generic name for a family of open-source Unix-like operating systems based on the Linux kernel.

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
  - lscpu    Displays information about the CPU architecture on the given machine.
  - lshw    Displays information about a system’s hardware. The command needs to be run as sudo in order to get all hardware information.
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
  - poweroff    Shuts down a computer. Must be run as sudo.
  - reboot      Restarts a computer. Must be run as sudo.
  - whoami      Displays the user ID.
  - init
  - /etc/init.d/
  - telinit
  - systemd
  - systemctl    Used to inspect and control the state of the systemd suite of Linux system components.
  - /etc/systemd/
  - /usr/lib/systemd/
  - Wall
  - users    Displays the names of users logged in to the computer.
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
  - Yum    The application installation and removal tool for Fedora, CentOS, and Red Hat Enterprise Linux (RHEL).
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
  - echo    Displays a string to stdout or to a file.
  - cd      Change to another current directory.
  - env
  - export
  - pwd    Displays the name of the present working directory.
  - set
  - unset
  - type
  - which    Commands in this section apply to working with a computer’s applications and executables.
  - man      Displays the internal help documentation for a given command.
  - curl    Gets or posts a file to or from the Internet according to a URL.
  - uname      The command uname reports system information about the local computer
  - history    Displays a list of commands executed on the system. The history command can also be used to manipulate the
history list and the way that history information is displayed.
  - .bash_history
  - Quoting
## Process text streams using filters
- Send text files and output streams through text utility filters to modify the output using standard UNIX commands found in the GNU textutils package
  - bzcat
  - cat    Commands in this section apply to working with data sent to stdout or displayed in a computer’s terminal window.
  - clear  Clears the terminal screen.
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
  - cp    Copies the contents of the source directory or file to a target directory or file.
  - find  Finds a file or directory by name.
  - mkdir    Creates a directory.
  - more    Allows a user to view and traverse the content of a file or stdout. The command more invokes itself within a distinct
command-line user interface. To exit the process users press the q key.
  - mv    Moves a file or directory. The mv command transfers all the contents from the source file or directory to the new
location.
  - filegzip
  - gunzip
  - ls
  - rm    Removes a file or directory.
  - rmdir
  - touch
  - tar    Compresses and decompresses files or directories.
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
  - bg    Sends a job to the background.
  - fg    Sends a job to the foreground.
  - jobs  Lists the jobs invoked from the process window
  - uptime
  - kill
  - nohup
  - ps      Displays the status of the current processes.
  - top    Displays information about the running Linux processes.env
  - free    This command reports information about memory status on the local computer or virtual machine.
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
  - sed    Manipulates the content of a file or output sent to stdout.
  - regex(7)
  - diff    Displays the difference in content between two files.
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
  - fdisk    Used for working with disk partitions on a computer’s hard drive. You can use fdisk to format and partition a new drive. Also, you can use fdisk to
get information about existing drives.
  - gdisk
  - parted
  - mkfs
  - mkswap
## Maintain the integrity of filesystems
- Verify the integrity of filesystems.
- Monitor free space and inodes.
- Repair simply filesystem problems.
  - du    Reports information about disk usage on the local computer or virtual machine.
  - df    Shows the amount of disk space used and available according to the file system that represents a particular disk
device mount. If no file name is given, the space available on all mounted file systems is displayed.
  - fsck
  - e2fsck
  - mke2fs
  - tune2fs
  - xfs_repair    Inspects and optionally repairs a hard drive on a computer running RHEL Linux.
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
  - mount    Shows or attaches a device êlesystem to a Linux operating system’s master êle tree.
  - umount
  - blkid
  - lsblk
## Manage file permissions and ownership
- Manage access permissions on regular and special files as well as directories.
- Use access modes such as suid, sgid, and the sticky bit to maintain security.
- Know how to change the file creation mask.
- Use the group field to grant file access to group members.
  - chmod    Changes the permissions granted to a êle or directory.
  - umask
  - chown    Changes the owner of a êle according to user and/or group.
  - chgrp
## Create and change hard and symbolic links
- Create links.
- Identify hard and/or soft links.
- Copying versus linking files
- Use links to support system administration tasks.
  - ln
  - ls    Lists the contents of a directory. Defaults to the current directory.
## Find system files and place files in the correct location
- Understand the correct locations of files under the FHS.
- Find files and commands on a Linux system.
- Know the location and purpose of important file and directories as defined in the FHS.
  - find    Finds a file or directory by name.
  - locate
  - updatedb
  - whereis
  - which
  - type
  - /etc/updatedb.conf
# 5. Shells and Shell Scripting
## Customize and use the shell environment
- .
- source  Executes commands stored in a file from within the current shell, and can also be used to refresh environment
variables.
- /etc/bash.bashrc
- /etc/profile
- env    Displays all environment variables running on the system.
- export  Creates an environment variable with a value and then exports the environment variable or value pair to the system.
- printenv  Prints a particular environment variable to the console.
- set
- unset
- ∼/.bash_profile
- ∼/.bash_login
- ∼/.profile
- ∼/.bashrc
- ∼/.bash_logout
- function
- alias    Assigns a shortcut name to an existing command or executable.
- awk      Finds, filters, or replaces text in a file or from stdout.
## Customize or write simple scripts
- for
- while
- test
- if
- read
- seq
- exec
- ||
- &&    Removes a running process from memory.
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
- groups    Lists the groups to which a user belongs.
- gpasswd    The command gpasswd is used to manage the configuration of a group under the Linux operating system. The
command must be run as sudo for administrator access.
- groupadd    Adds a group to a computer running the Linux operating system. The command must be run as sudo in order to have administrator access.
- chage
- getent
- groupadd    Adds a group to the computer. The command must be run as sudo for administrator access.
- groupdel    Deletes a group from the computer. The command must be run as sudo for administrator access.
- groupmod
- passwd
- useradd    Adds a user to the computing environment. The command must be run as sudo for administrator access.
- userdel    Deletes a user from the computer. The command must be run as sudo for administrator access.
- usermod    Modifies user account information and can be used to add a user to a group. The command must be run as sudo for
administrator access.
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
# 8. Essential System Services
## Maintain system time
- /usr/share/zoneinfo/
- /etc/timezone
- /etc/localtime
- /etc/ntp.conf
- /etc/chrony.conf
- date
- hwclock
- timedatectl
- ntpd
- ntpdate
- chronyc
- pool.ntp.org
## System logging
- /etc/rsyslog.conf
- /var/log/
- logger
- logrotate
- /etc/logrotate.conf
- /etc/logrotate.d/
- journalctl
- systemd-cat
- /etc/systemd/journald.conf
- /var/log/journal/
## Mail Transfer Agent (MTA) basics
~/.forward
- sendmail emulation layer commands
- newaliases
- mail
- mailq
- Postfix
- sendmail
- Exim
## Manage printers and printing
- CUPS configuration files, tools, and utilities
- /etc/cups/
- lpd legacy interface (lpr, lprm, lpq)
# 9. Networking Fundamentals
## Fundamentals of Internet protocols
- /etc/services
- IPv4, IPv6
- Subnetting
- TCP, UDP, ICMP
## Persistent network configuration
- /etc/hostname
- /etc/hosts
- /etc/nsswitch.conf
- /etc/resolv.conf
- nmcli    The application nmcli is the command-line interface for working with the Linux NetworkManager.
- hostnamectl
- ifup
- ifdown
## Basic network troubleshooting
- ip    Gets the IP information for the physical or virtual machine.
- hostname    Reports the local computer’s host name.
- ss
- ping
- ping6
- traceroute    Reports the route that a packet takes in hops to move through the Internet to reach its destination.
- traceroute6
- tracepath
- tracepath6
- netcat
- ifconfig
- netstat
- route
## Configure client-side DNS
- /etc/hosts
- /etc/resolv.conf
- /etc/nsswitch.conf
- host    Reports information about a given domain name.
- dig
- getent
# 10. Security
## Perform security administration tasks
- find
- passwd
- fuser
- lsof
- nmap
- chage
- netstat    Displays information about network connections, routing tables, interface statistics, masquerade connections, and
multicast memberships.
- sudo
- /etc/sudoers
- su
- usermod
- ulimit
- who, w, last
## Setup host security
- /etc/nologin
- /etc/passwd
- /etc/shadow
- /etc/xinetd.d/
- /etc/xinetd.conf
- systemd.socket
- /etc/inittab
- /etc/init.d/
- /etc/hosts.allow
- /etc/hosts.deny
## Securing data with encryption
- ssh    Secure shell is an encrypted network protocol that provides remote login and command execution capabilities. On
Windows, you would use PPuuTTTTYY and WWiinnSSCCPP. An sssshh..eexxee is also available via Cygwin, as well as with a Git installation.
- ssh-keygen
- ssh-agent
- ssh-add
- ~/.ssh/id_rsa and id_rsa.pub
- ~/.ssh/id_dsa and id_dsa.pub
- ~/.ssh/id_ecdsa and id_ecdsa.pub
- ~/.ssh/id_ed25519 and id_ed25519.pub
- /etc/ssh/ssh_host_rsa_key and ssh_host_rsa_key.pub
- /etc/ssh/ssh_host_dsa_key and ssh_host_dsa_key.pub
- /etc/ssh/ssh_host_ecdsa_key and
- ssh_host_ecdsa_key.pub
- /etc/ssh/ssh_host_ed25519_key and
- ssh_host_ed25519_key.pub
- ~/.ssh/authorized_keys
- ssh_known_hosts
- gpg
- gpg-agent
- ~/.gnupg/
- wget    Downloads files from the Internet. Supports the HTTP, HTTPS, and FTP protocols. You can use wget as an alternative
to curl.
- nslookup    A program that queries for information about a particular Internet domain name.
- sestatus    This program is used to report status information about a computer or virtual machine running SELinux.
- ausearch    Used to query the audit logs according to events deêned by diéerent search criteria.
- iptables    Sets and monitors network access to a given computer.
- iotop      iotop is a system monitoring program. It does not ship by default with Red Hat Enterprise Linux and must must be installed using the command set
sudo yum install itop.
- getenforce    Reports the current mode of SELinux rules enforcement. The modes are Enforcing, Permissive, or Disabled.
- getsebool    Reports whether an applicable SELinux setting is on or off. Use the -a option to show the boolean value of all settings.
- restorecon    Used to set the security context (extended SELinux êle labels) on one or more êles to the default setting.
- semanage    Allows administrators to manage SELinux capabilities according to the particular object of interest. Each object will have its own set of options.
Examples of semanage objects are user, login, port, and fcontext, to name a few.
- setsebool    Applies a boolean value to an SELinux setting.
- subscription-manager    The subscription-manager is the command-line version of the graphical Red Hat Enterprise Linux Subscription Manager. Subscription Manager is a
service that keeps track of the Red Hat products and subscriptions installed on a local computer. Subscription Manager communicates with the
subscription service on the backend. Typically, backend settings are managed via the Customer Portal or an on-premise server such as Subscription
Asset Manager. Subscription Manager works with content management tools such as yum.
The command subscription-manager will run as the root user; thus, a password prompt will be presented upon invocation.
- vmstat    Reports information about virtual memory usage as well as other relevant system data.











