# buildroot-rpi

This repository contains assignment starter code for buildroot based assignments for the course Advanced Embedded Software Design, ECEN 5713

It also contains instructions related to modifying your buildroot project to use with supported hardware platforms.  See [this wiki page](https://github.com/cu-ecen-5013/buildroot-assignments-base/wiki/Supported-Hardware) for details.

See https://github.com/cu-ecen-aeld/assignments-3-and-later-tiba6275/releases/tag/assignment-4-complete for assignment 4 result in the assignment 3 repo.

We will be using rpi3

Configuration of rpi  for Buildroot:
----------------------------
Other configuration of rpi:
----------------------------
For models A, B, A+ or B+:

  $ make raspberrypi_defconfig

For model Zero (model A+ in smaller form factor):

  $ make raspberrypi0_defconfig

For model 2 B:

  $ make raspberrypi2_defconfig

For model 3 B and B+:

  $ make raspberrypi3_defconfig

For model 4 B:

  $ make raspberrypi4_defconfig
