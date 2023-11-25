# 🖥️ Terminal

[![Static Badge](https://img.shields.io/badge/Itch.io-CodaBool-red?style=flat-square&logo=itchdotio)](https://codabool.itch.io) [![Static Badge](https://img.shields.io/badge/Discord-CodaBool-blue?style=flat-square&logo=discord)](https://discord.gg/foundryvtt) [![Static Badge](https://img.shields.io/badge/Foundry%20Verfied%20Version-11-brightgreen?style=flat-square&logo=checkmarx)](https://github.com/CodaBool/terminal/issues)

![Preview Video](https://raw.githubusercontent.com/CodaBool/terminal/main/img/preview.gif)

A FoundryVTT module to create interactive terminals with custom content and theming

# 🚩 Context
This is the public facing repo which reflects changes to a private repo. I use this repo to keep record of the following things:

1. A [Usage](https://github.com/CodaBool/terminal#usage) section. Detailing how to use the module.
2. Track [issues](https://github.com/CodaBool/terminal/issues)
3. Keep a [changelog](https://github.com/CodaBool/terminal/blob/main/changelog.md) of features

# 🔑 Access
> I am currently in the process of becoming a premium content creator with Foundry. Until that happens the module will not be available for download

Until then you can follow me on [Itch.io](https://codabool.itch.io) for updates.

# 🔨 Usage
1. Complete the Access section for how to tie the module to your Foundry account.
2. In your Foundry server instance go to the setup screen and view the "Add-on Modules" tab. Click "Install Module" and type into the search "terminal". You should see a package called Terminal by CodaBool, click "Install".
3. Now go into a game world you have created. Go to settings > Manage Modules, enable the terminal module
4. place a tile and click "Create Tile"
5. double click your created tile to see the terminal settings
6. Enable the Terminal by clicking the Enable checkbox and then click the "Assign Journal" button
7. Select a journal from your list of journals
8. Move onto the tile with any token

### 🎨 Customize
You can change the color and ASCII art of the terminal. Go to your Game Settings and filter to Termainal. You can set the colors and splash art.


### 🐜 Incompatibility
This module version 1 will not be compatible with the theripper93's [levels](https://foundryvtt.com/packages/levels) module. Which is a very popular way to add multi-floor layouts to a scene. With this in mind do not place a terminal tile anywhere which is walkable from below it or above it. Because there is no checking on height in this module.

I will implement checking for this in a version 2 release.

### 🎈 Stretch Goals
Will be making a priority for stability for the first couple patches. However, once those are through there are some additional features I want to add:

- sound effects (disk spinup, ambient computer noises. Customizable)
- preset styles to match with popular game systems like Star Wars or Cyberpunk
- ways to interact with doors
- ways to optionally incorporate rolls
- hacking / puzzle minigame
