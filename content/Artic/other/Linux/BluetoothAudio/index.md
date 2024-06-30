---
title: "Bluetooth Audio Issues"
date: 2018-11-15T13:13:29+08:00
draft: false
tags: ["os-setup", "manjaro"]
categories: ["Linux"]
toc: true
nomath: true
summary: "How to manager the Bluetooth earphones. Switch HSV to A2DP for the better performance."
---

# Switch HSV to A2DP

## A2DP not working with PulseAudio

Here is the explanation from ArchWiki: [A2DP not working with PulseAudio](https://wiki.archlinux.org/index.php/Bluetooth_headset#A2DP_not_working_with_PulseAudio)

With `Blueman-manager` version `2.06` and `PulseAudio` version `12.2` , there is an issue that one cannot switch to A2DP with GUI. It will post the error message that `Fail to change profile to A2DP` . It seems only happening in Gnome. One need to avoid the `GDM` to start `PulseAudio`. The solution is:

1.  Edit `/etc/pulse/default.pa` to close the default Bluetooth discover of pulse.
    ```shell
    nano /etc/pulse/default.pa

    # load-module module-bluetooth-discover
    ```

2.  Edit `/usr/bin/start-pulseaudio-x11` to open bluetooth discover by `pactl` . It should be:
    ```shell
    nano /usr/bin/start-pulseaudio-x11
    if
    ...
        if [ x”$SESSION_MANAGER” != x ] ; then
        /usr/bin/pactl load-module module-x11-xsmp “display=$DISPLAY session_manager=$SESSION_MANAGER” > /dev/null
        fi

     #Insert this line#
     /usr/bin/pactl load-module module-bluetooth-discover
     fi
     ```
     Usually this block of code is at the last line.

This solution is from:

1.  [Linux & Bluetooth](http://m.php.cn/article/364011.html)
2.  [BBS. Arch at #17](https://bbs.archlinux.org/viewtopic.php?id=194006)
3.  [ArchWiki.Chinese Simplified](https://wiki.archlinux.org/index.php/Bluetooth_headset_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#PulseAudio%E4%B8%8BA2DP%E4%B8%8D%E8%83%BD%E5%B7%A5%E4%BD%9C)
