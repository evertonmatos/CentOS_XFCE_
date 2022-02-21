# XFCE interface package for CentOS 8 minimal

A compilation of packages needed to provide a nice and clean interface to low performance computers using CentOS 8 Minimal and XFCE.

![alt text](docs/11-desktop.png "Desktop")

## CentOS 8 Stream Installation

Download Centos 8 Stream

Get the file CentOS-Stream-8-x86_64-latest-boot.iso or something like that from https://www.centos.org/download/

Boot the computer with the iso and install the OS.

![alt text](docs/00-boot.png "Boot ISO")

Select language and click "Continue"

![alt text](docs/01-language.png "Config Language")

Enter on "Network and Host Name" options

![alt text](docs/02-installer-1.png "Installer")

Enable internet

![alt text](docs/03-network.png "Network")

Wait for the system to setting up installation source

![alt text](docs/04-installer-2.png "Installer")

Enter on "Software Selection" options

![alt text](docs/05-installer-3.png "Installer")

Select "Minimal Install"

![alt text](docs/06-software-selection.png "Software Selection")

Set a password for "root" user

![alt text](docs/07-root-password.png "Root Password")

Wait for the installation

![alt text](docs/08-installation.png "Installation")

When the installation is done, click on "Reboot System"

![alt text](docs/09-restart.png "Restart")

Get the actual IP using the command 

    hostname -I

![alt text](docs/10-get-ip.png "Get IP")


## XFCE Installation

#### Clone project

```bash
git clone https://github.com/evertonmatos/CentOS_XFCE_/
```

### Installing

#### Enter project folder

```bash
cd CentOS_XFCE
```

#### Adjust variables

Open config.yml file and adjust the name of the user to be created

#### Execute installer

```bash
./runner_c8.sh 192.168.0.111 root_password
```
