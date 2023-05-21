# No Mac Music

![GitHub release (latest by date)](https://img.shields.io/github/v/release/openhoangnc/NoMacMusic?style=for-the-badge)
![GitHub all releases](https://img.shields.io/github/downloads/openhoangnc/NoMacMusic/total?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/openhoangnc/NoMacMusic?style=for-the-badge)

Another tool designed to disable the annoying auto-play music feature on macOS.

When you connect Bluetooth headphones, sometimes macOS automatically launches the Music app and starts playing music. This tool prevents the Music app from launching.

Inspired by [noTunes](https://github.com/tombonez/noTunes), this tool is simpler and more lightweight.

By separating the launcher and the background process, this tool consumes almost no CPU and RAM resources.

<img width="728" alt="NoMacMusic consumes almost no CPU and RAM resources" src="https://github.com/openhoangnc/NoMacMusic/assets/20717116/5f5f8138-ffc6-4cb2-a80c-61c489b4b99f">

## Features

- No GUI, no icon, no dock—just a background process
- No configuration required; simply install and forget
- Easy installation and uninstallation with a single command
- **Extremely lightweight**
  - Download size: 61 KB
  - Disk usage: 382 KB
  - CPU usage: 0%
  - RAM usage: 7 MB

## Installation

```sh
curl -sSL https://github.com/openhoangnc/NoMacMusic/raw/main/scripts/install.sh | sh
```

This script will perform the following actions:

- Download and install the latest version of No Mac Music
- Add it to the login items
- Start the tool

## Uninstallation

```sh
curl -sSL https://github.com/openhoangnc/noMacMusic/raw/main/scripts/uninstall.sh | sh
```

This script will perform the following actions:

- Stop No Mac Music
- Remove it from the startup items
- Delete all files associated with No Mac Music
