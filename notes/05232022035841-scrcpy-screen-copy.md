+++
title = "Scrcpy Screen Copy"
slug = "05232022035841-scrcpy-screen-copy"
tags = ["howto", "screen", "share", "foss", "android", "archive"]
rss_title = "Scrcpy Screen Copy"
rss_pubdate = Date(2022, 5, 22)
+++



Scrcpy Screen Copy
=========

**Date:** May 22 2022

**Summary:** 

**Keywords:** #howto #screen #share #foss #android #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

`scrcpy` also known as Screen Copy is an [open source package](https://github.com/Genymobile/scrcpy) that allows one to mirror Android devices to computer screens.

### Normal Set up

1. Install `scrcpy`
2. Enable USB debugging on Android device
3. Connect Android device to computer
4. Make sure to have `adb` installed alongside `scrcpy`
5. Run `scrcpy`

### Set Up for Wireless Connection

1. Connect the device to the same Wi-Fi as your computer
2. Get your device IP address (in Settings -> About phone -> Status)
3. Enable adb over TCP/IP on your device: `adb tcpip 5555`
4. Connect to your device: `adb connect DEVICE_IP:5555` (replace `DEVICE_IP`)
5. Unplug your device
6. Run `scrcpy` as usual

I recommend using this command: `scrcpy --bit-rate 2M --max-size 800`
## How To Cite

 Zelko, Jacob. _Scrcpy Screen Copy_. [https://jacobzelko.com/05232022035841-scrcpy-screen-copy](https://jacobzelko.com/05232022035841-scrcpy-screen-copy). May 22 2022.
## References:
## Discussion: 

{{ addcomments }}
