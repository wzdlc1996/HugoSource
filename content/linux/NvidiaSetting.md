---
title: "Dual Graphic Card Configuration for Manjaro Linux"
date: 2018-10-31T14:48:29+08:00
draft: false
tags: ["Linux", "Manjaro"]
series: ["Linux"]
categories: ["Linux"]
toc: true
---

### Introduction
usually, linux has two method to handle the dual-graphic card. The difference between
them are:

| Method         | Advantages     | Disadvantages|
| :------------- | :------------- |:-------------|
|Bumblebee       | Uses dGPU(descrete) only when requested.  Saving power <br> Manjaro default|Some overhead so lower raw performance|
|PRIME|Uses the dGPU directly , Better performance |dGPU and iGPU(integrated) both powered on constantly <br> need manual configuration|

### Step 1. Remove Bumblebee

Usually manjaro can be easily installed choosing the `free drive` mode, but `nouveau`
is hard to use. And sometimes it make user cannot entry the x-system.
One way is that noting `nouveau` in `blacklist` , use command:
```shell
sudo nano /etc/modprob.d/usrBlack.blacklist

blacklist nouveau
```
Then to use the graphic card, one can run `mhwd-tui` to install the non-free driver and
Bumblebee to manage dual graphic card.
First of all, we need uninstall bumblebee, and may the graphic card driver installed by mhwd.
One can simply remove them using the `mhwd` command in terminal or via `Manjaro Settings Manager`
In other distribution, the work is the same. User can using their package manager to do it.
Or more directly, do **NOT** install bumblebee, directly install PRIME after truning off nouveau.

### Step 2. Install Closed-source Driver
One can follow the following articles to install the driver according to what he use:

- [ATI](https://wiki.archlinux.org/index.php/ATI) to install drivers for ATI/AMD GPUs
- [NVIDIA](https://wiki.archlinux.org/index.php/NVIDIA) to install drivers for NVIDIA GPUs

To be careful, user should query which version of the driver is the best for their hardware.

### Step3. Fix MHWD's Configuration
this is for Manjaro Linux, for `mhwd` does the sensible thing and puts configuration in place as though the NVIDIA GPU was the only device available.
Other distribution can jump to Step 4

1. **Remove Old Config File**

    Firstly, remove `/etc/X11/xorg.conf.d/90-mhwd.conf` (notice the su permission) , and replace it with:
    ```shell
    #/etc/X11/xorg.conf.d/optimus.conf  
    Section "Module"
        Load "modesetting"
    EndSection  
    Section "Device"
        Identifier "nvidia"
        Driver "nvidia"
        BusID "PCI"
        Option "AllowEmptyInitialConfiguration"
    EndSection
    ```
    While the BusID value can be find by command: `lspci | grep -E "VGA|3D"`

2. **Write Blacklist**
    One need to remove two files: `/etc/modprobe.d/mhwd-gpu.conf` and `/etc/modprobe.d/mhwd-nvidia.conf` and write a new one:

    ```shell
    blacklist nouveau
    blacklist nvidiafb
    blacklist rivafb
    ```

### Step 4. Enable `nvdia-drm.modeset`
PRIME relies on `vidia-drm` , one need to creat a new file:

```shell
#/etc/modprobe.d/nvidia-drm.conf

options nvidia_drm modeset = 1
```
