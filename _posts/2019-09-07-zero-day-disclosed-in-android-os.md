---
title: Zero-day disclosed in Android OS
header:
 image: https://zdnet1.cbsistatic.com/hub/i/2019/09/05/49082237-c365-4baa-87ff-b2b6c0426452/1a6cf3bec7821fd176ee05d1e2b37be8/android-vulnerability.jpg
categories: [android]
tags: [zero-day vulnerability, V4L2 driver, Video for Linux, privilege escalation]
---
Android project maintainers fail to fix dangerous privilege escalation bug six months after initial report.

Details about a zero-day vulnerability impacting the Android mobile operating system have been published online, yesterday, September 4.

The vulnerability resides in how the [Video for Linux (V4L2) driver](https://www.linuxtv.org/downloads/legacy/video4linux/v4l2dwgNew.html){: rel="noopener noreferer nofollow"} that's included with the Android OS handles input data.

Feeding the driver malicious input can allow an attacker to elevate their access from a lowly user to root access.

The good news is that this vulnerability -- categorized as a privilege escalation issue -- can't be exploited remotely. Attackers need local access, meaning they need to plant malicious code on the device beforehand.

This zero-day can't be used to break into users' phones, but it can be used to make hacks much worse, by allowing attackers to take full control of a device, post the initial infection.

## Zero-day can be easily weaponized

One scenario where this zero-day can come in handy is when malware authors bundle it within malicious apps they distribute via the official Play Store or through third-party app stores.

After the user installs one of these malicious apps, the zero-day can grant the malicious app root access, and the app can then carry out any operations it wants -- stealing user data, downloading other apps, etc..

## This is how all privilege escalation bugs are normally used on Android devices.

Some security experts might play down the importance of this zero-day -- which hasn't received a CVE number yet -- but privilege escalation vulnerabilities are very easy to weaponize on the Android ecosystem, unlike on most other operating systems, where they're not considered a priority.

**For example**, nowadays, many malicious Android apps come bundled with the **Dirty COW privilege escalation [exploit](https://dirtycow.ninja)** that lets the apps gain root access on older Android smartphones.

## Android devs were notified, but failed to deliver a patch

However, despite a history of malicious apps abusing privilege escalation bugs to gain root access, the maintainers of the **Android Open Source Project (AOSP)** have not patched this one.

They had all the time in the world, since the issue was first reported to AOSP back in March this year, after being discovered by two Trend Micro security researchers. In spite of acknowleding the bug report and promising a patch, the fix never came.

Yesterday, Trend Micro researchers went public with [their findings](https://www.zerodayinitiative.com/advisories/ZDI-19-780/){: rel="noopener noreferer nofollow"} after Google published [the September 2019 Android Security Bulletin](https://source.android.com/security/bulletin/2019-09-01.html){: rel="noopener noreferer nofollow"}, which didn't include a fix for their bug.

For the moment, there's no easy solution to prevent malicious apps from exploiting this issue.

Many of 2018's most dangerous Android and iOS security flaws still threaten your mobile security.

_Source: [zdnet](https://www.zdnet.com/google-amp/article/zero-day-disclosed-in-android-os/)_
