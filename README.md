## Overview

Quasi-papirus is a free and open source SVG icon theme variant of [Papirus icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), which itself is based on the [Paper Icon Set](https://github.com/snwh/paper-icon-theme). You can either download a release and install it manually, or use the provided installation script. The standard Papirus installation methods and tools are not included. Both installation options are described below.


> [!NOTE]
> This particular version has been modified to accommodate personal preference changes in some specific areas. I keep the fork public on GitHub in case anyone is interested in checking out this version, and it makes it easier to keep it up to date with upstream, but it is not intended to be a serious project or actively developed as one.

## Changes from upstream

#### **1. Single variant**
The “Light” and “Dark” variants were removed. Essentially, they are legacy options, at least in KDE Plasma. The icon system should automatically switch between the light and dark variants based on what the system exposes, at least **ideally**. This change has not caused any issues on my system, and I regularly use different theme variants, so I decided to go with this approach.

#### **2. Icon variants for archive files**
By default, Papirus uses a [single icon](quasi-papirus/22x22/apps/ark.svg) for all archive file types. I don't particularly like this, so I created separate variants for [ZIP](quasi-papirus/22x22/apps/ark-zip.svg), [7z](quasi-papirus/22x22/apps/ark-7z.svg), [TAR](quasi-papirus/22x22/apps/ark-tar-gz.svg), and [RAR](quasi-papirus/22x22/apps/ark-rar.svg) files, which are the formats I usually deal with.

#### **3. Unified folder color**
This might seem like a somewhat odd choice. I used Windows for many years, and I got somewhat used to the folder color Microsoft has historically used. In Papirus, the closest option to this is [paleorange](quasi-papirus/32x32/places/folder-paleorange.svg).

Since Dolphin doesn't use the folder icon I wanted by default, I manually modified the org.kde.dolphin icon to match this particular theme and keep the desktop consistent.

Ultimately, you can manually change individual folder icons to use other themes, but this theme is based on the paleorange color scheme, with a few additional tweaks to keep everything consistent with this particular theme. I also think it works well with both light and dark themes.

## Installation
**Keep in mind that this icon set is updated manually.**

Remember to restart Plasma with `systemctl --user restart plasma-plasmashell` (in case you are using KDE), or log out and back in to your session to ensure the changes are applied correctly. In my experience, the icons are only applied correctly after logging out and back in.


### Installation script
You can use the script provided by this repository to install or update quasi-papirus. Keep in mind that by “update,” I mean overwriting the local version with changes that have been downloaded manually. In other words, the script does not download updates from the internet; it only helps manage the local installation.

To install using the script, run `install.sh`, which is included with the icon theme. This will install the icon theme in the standard location so it can be automatically detected by the system.

```bash
chmod +x install.sh
./install.sh
```

This should be all you need! To update, simply download the latest release and run the installation script again. Updates should be nearly instantaneous.

### Manual installation

For a manual installation, you can copy the quasi-papirus folder to your user directory at `~/.local/share/icons/` or wherever you need it.

> [!NOTE]
> When installing manually, make sure you copy the inner quasi-papirus folder — the one containing index.theme and the icon directories. Do not copy the outer quasi-papirus folder, which only contains the actual theme folder and other repository files.

## Uninstallation
To uninstall it, you can run the uninstallation script included in the downloaded folder, `uninstall.sh`.

```bash
chmod +x uninstall.sh
./uninstall.sh
```

Alternatively, deleting `~/.local/share/icons/quasi-papirus` is sufficient.
