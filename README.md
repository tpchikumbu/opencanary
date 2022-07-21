# opencanary
FreeBSD port for OpenCanary

## Overview
OpenCanary is a network honeypot used to detect hackers on a compromised system. This project allows OpenCanary to be downloaded straight from the FreeBSD ports tree. 

## Install
It is advised to install OpenCanary within a FreeBSD jail to isolate it from the rest of your system. It is also possible to run it within apython virtual environment, as seen on other operating systems.
As the port is not on the ports tree yet, these files must be manually downloaded and placed within an appropriate category of the local ports collection. The port currently points to a personal fork of th Thinkst/OpenCanary repo but a pull request has been opened to get them on the official repo. A few changes files were needed to get everything running.
The Makefile is configured in such a way that the port is set to pull distribution files from a specific commit on the git repo with the `GH_TAGNAME` option. This can be changed to any appropriate tag or omitted entirely to pull from the latest available release on github. It is recommended to clean stale distfiles and verify the integrity of downloaded ones with the following commands within the directory of the port.

`make distclean`
`make makesum`

The `build` and `package` targets can then be used to create an installable package on FreeBSD. Running `make install` then installs it to the system.
OpenCanary uses some python modules which do not currently have FreeBSD ports. These can however be downloaded using the pip installer. They are:
- hpfeeds
- ntlmlib
The command to install them is :
`pip install hpfeeds ntlmlib`

Instructions for running and configuring OpenCanary can be found on the official OpenCanary repo.
https://github.com/thinkst/opencanary