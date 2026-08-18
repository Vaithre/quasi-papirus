## Overview

Quasi-papirus is a free and open source SVG icon theme variant of [Papirus icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), which itself is based on the [Paper Icon Set](https://github.com/snwh/paper-icon-theme). Since I don't really know how icon theme development works, this solution is a bit of a hack, at least for now. Basically, it installs normally, and then a patch is applied afterward. Alternatively, you can download the entire release and install it manually. Both methods are described below.


> [!NOTE]
> This particular version has been modified to accommodate personal preference changes in some specific areas. I keep the fork public on GitHub in case anyone is interested in checking out this version, and it makes it easier to keep it up to date with upstream, but it is not intended to be a serious project or actively developed as one.

## Changes from upstream

#### **1. Single variant**
The “Light” and “Dark” variants were removed. Essentially, they are legacy options, at least in KDE Plasma. The icon system should automatically switch between the light and dark variants based on what the system exposes, at least **ideally**. This change has not caused any issues on my system, and I regularly use different theme variants, so I decided to go with this approach.

#### **2. Icon variants for archive files**
By default, Papirus uses a single icon for all archive file types. I don't particularly like this, so I created separate variants for ZIP, 7z, TAR, and RAR files, which are the formats I usually deal with.

#### **3. Unified folder color**
This might seem like a somewhat odd choice. I used Windows for many years, and I got somewhat used to the folder color Microsoft has historically used. In Papirus, the closest option to this is paleorange.

Since Dolphin doesn't use the folder icon I wanted by default, I manually modified the org.kde.dolphin icon to match this particular theme and keep the desktop consistent.

Ultimately, you can manually change individual folder icons to use other themes, but this theme is based on the paleorange color scheme, with a few additional tweaks to keep everything consistent with this particular theme. I also think it works well with both light and dark themes.

## Installation
