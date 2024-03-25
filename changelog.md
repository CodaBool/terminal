<pre>
⠀⠀⢀⣀⠤⠿⢤⢖⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡔⢩⠂⠀⠒⠗⠈⠀⠉⠢⠄⣀⠠⠤⠄⠒⢖⡒⢒⠂⠤⢄⠀⠀⠀⠀
⠇⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠈⠀⠈⠈⡨⢀⠡⡪⠢⡀⠀
⠈⠒⠀⠤⠤⣄⡆⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⠀⢕⠱⠀
⠀⠀⠀⠀⠀⠈⢳⣐⡐⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠁⠇
⠀⠀⠀⠀⠀⠀⠀⠑⢤⢁⠀⠆⠀⠀⠀⠀⠀⢀⢰⠀⠀⠀⡀⢄⡜⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠘⡦⠄⡷⠢⠤⠤⠤⠤⢬⢈⡇⢠⣈⣰⠎⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣃⢸⡇⠀⠀⠀⠀⠀⠈⢪⢀⣺⡅⢈⠆⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠶⡿⠤⠚⠁⠀⠀⠀⢀⣠⡤⢺⣥⠟⢡⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀
</pre>
# Version 2.0.0
> major code changes 508 line insertions(+), 130 line deletions(-)
> from my testing all features (excluding macro args) working Foundry V10-V11 verified


## 🎯 Game System Specific
> For this update I read through the rules on several game systems.
> I found that these game systems make up the majority of Sci-Fi on Foundry:
> Starfinder, Cyberpunk RED, Star Wars FFG, Lancer, Alien RPG, Shadowrun, Warhammer: WG
> I purchased the PDFs or modules associated with blade runner, warhammer IM, warhammer WG, cyberpunk, starfinder, lancer, shadowrun, fallout, star wars FFG.
> This helped me design the feature to look into what items a user has and restrict access. As well as a feature specific to Starfinder and Alien.
> In the future I could do further integrations. Top of the priority list right now is Cyberpunk RED.
> They have a distinct rules around how a Terminal should be accessed. I hope to have a targeted update for Cyberpunk RED sometime this year. 

## ✨ Features
- support PDFs
- fully integrate with Monk's Active Tiles, allowing for the triggers tabs to be ran from the Terminal UI.
- allow doors to be relocked
- can require password for terminal entry
- can require an item for terminal entry
- feedback button on tile config, which allows you to quickly report bugs
- Turn power on or off (really just uses the scene darkness)
- can observe tokens, this can simulate camera or turret access or anything you can think of
- can limit token observeration to a set time in seconds
- can detect motion for the scene
- can use a skill check for observe button
- can use a skill check for map button
- can use a skill check for specific page(s), which can simulate file encryption
- can use a skill check for power
- can use a skill check for detect motion
- can use a skill check for door lock altering
- can access other computers
- page decryption changes the ownership of that page
- compendium macros updated to reflect new changes
- Alien RPG now has a charge items button
- Starfinder now can enter their computer tier
- added a notification system to tell you if newer versions of Terminal macros are available
- added 8 new forms of validation on tile settings
- ssh, item, and actor selectors use click listeners like Monk module. To make selecting IDs easy.
- add new Skill Check UI for easily picking when skill checks happen
- add a success line for Starfinder

## 🚨 Deprecated
> migrate to the macro button or use Monk's Active Tiles to regain these lost features

- removed entry macro
- removed exit macro

## 🐛 Bugs squashed
- audio volume was not being respected, it will pull dynamically now. Does not require reopening whatever window to pull new volume setting
- image captions would be displayed even when "undefined". Meaning you would often see "undefined" as a caption
- new styles would not be immediately available in the style dropdown until reopening the tile config if the tile config was open
- clicking yes reveal as a GM would actually try to reveal, despite telling you it doesn't try that
- prevent html inject. Significant rework on how content gets injected into the terminal main content box.
- will pull journal content on click, if changes are made to the journal they can be reflected without closing and reopening
- will only change journal permissions when it needs to. Used to prematurely change ownership in several areas
- validation added for existing feature. Will check that fog exploration + token vision is on for the scene when Map Button is checked
- use `foundry.utils.mergeObject` since old method is deprecated
- do a check on if a journal exists before trying to open Terminal

## bugs discovered
- ambient audio doesn't respect volume changes
- monk's active tile triggers will only do the first action

# Version 1.3.6
### Bugs squashed
- fixed issue of macros buttons not executing if triggered as a GM

# Version 1.3.5
### Bugs squashed
- a couple quick tile form hot fixes, form changes should all apply immediately and not require a "save" button press.

# Version 1.3.4
### Features
- Allow for Terminals to be opened through macros
  - included two macros in a compendium, one for opening a Terminal for 1 user, another for opening for all. I do recommend using the included macro and not the one I posted in an Itch.io comment since the compendium macro has lots of nice validation and error handling
  - this can be used with the Monk's Active Tiles module to allow for more use cases outside of token movement based opening
- fix issue of the close button not being visable when an error occured with a Terminal
- major internal code changes, switched over to using a Handlebars render template instead of just a large html string
- give a warning when deleting a style that is in use in the current scene
- better error messages when a tile is misconfigured

### Bugs squashed
- some validation which was causing bugs and was removed is now fixed and brought back in
- wasn't performing a check on if a Terminal is already open in some cases. That's been fixed
- rolled back accordian functionality and other of tile settings changes. The form changes brought in 1.3.0 are not up to standards. Best to keep things simple here.
- will now check if a permission change needs to occur right before instead of right when the Terminal opens. This would have occurred if multiple people had the Terminal open and someone updated the default ownership before another closed the Terminal.
  - this allowed me to remove the need to provide the journal permission up front


# Version 1.3.3
- add an experimental way to run Terminal through Macros

# Version 1.3.2
- hotfix for bugs introduced with 1.3.1
- form validation completely failed to interact with the form fix I brought in 1.3.1

# Version 1.3.1
> Deprecation: I am deprecating the entry and exit macros and fully removing them in release version 2.0.0. See [here for more info](https://github.com/CodaBool/terminal/issues/3).

### Features
- 🧑‍🤝‍🧑 support multiple GMs
  - I've known that there would be bugs surrounding multiple GMs. So, I finally gave a full look over.
  - generally a random GM is chosen and will have them used as the proxy to authenticate any API call
  - has better error handling for if no GM is connected
- Form better clarifies who runs macros

### Bugs squashed
- fixed a form issue with the Tile settings from the known issues in last version

# Version 1.3.0
> major code changes 6 files changed, 508 line insertions(+), 130 line deletions(-)
> from my testing all features (excluding macro args) working Foundry V10-V11 verified

## ✨ Features
- ⚙️ new macro method
- 🖼️ Terminal Borders
  - all terminal styles can now have a custom image border.
  - included 14 borders in the module. These are great because they can also be used as the terminal background.
  - all the default styles now have borders, this may require a complete reinstall to have that written to Foundry's DB. If that doesn't work you will just have to create your own custom one that is similar to your game system's preset
- 🗣️ macro can now take arguments
  - this is only for Foundry v11.295+ since that's when arbitrary macro arguments were added
- 🙂 major User Experience improvement for selecting door IDs and linking a macro to a terminal
  - you no longer need to figure out how to gather the IDs for any Door or Macro and can simply select them from your view in a simple way
- 📽️ allow for more journal page types instead of just text. This means you can create Video and Image type pages (still not pdf type)
  - The following settings will be allowed and read appropriately from the page: video volume, video controls, video volume, video autoplay, image caption
- ✍️ Form improvements
  - hints as to what each setting does is hidden behind a hover on a information icon. This cleans up the look
  - several changes to make it follow a clean grid like look
  - settings collapse when Terminal is disabled. This brings focus to the required settings. As well as keeping things more accessible
  - placed a header over which settings are optional
- changed notification setting to be more generic and moved a few notifications behind that setting
- improve style editor, now has section names. There is a link to my favorite online audio editor since I don't have a way to balance audio for individual audio files.

## 🚨 Deprecation
> I am deprecating the entry and exit macros and fully removing them in release version 2.0.0 (which won't come for a couple updates + months from now).
> This is because I am not entirely convinced that they would be better than my new macro method introduced this version.
> I was never happy with the exit macro and how it could be ran even if a player had closed the Terminal UI.
> I don't see a way to make that work in a clear consistent manner.
> Having a button which the player clicks on in the Terminal UI is much more clear about what's happening.
> If you disagree with this change you are more than welcome to make a case on the [issue page](https://github.com/codabool/terminal/issues).
> It's still possible to get the exact same behavior with [monk's active tiles](https://github.com/ironmonk88/monks-active-tiles) module.

## known issues
- I am aware of an issue where if the terminal is not enabled but a macro or a unlock door setting is changed it will collapse and disable the terminal. This is annoying and I will fix this in a 1.3.1 release. The code change isn't as simple as I would hope and I already have a lot (hundreds) included in this version, so I'm pushing it down further down.
- I realized it's not clear who runs macros and what permissions should be set. I will update the text hints for that in the next update as well
  - for now you can know that entry and exit macros run by whichever user walks on or exits. While the new Run Macro setting always runs on the GM side to unlock all APIs.

## 🐛 Bugs squashed
- tile config validation error notifications would happen on non-GM users
- I was not handling other journal page types, it would just say "undefined" but still show as a button
- Pressing Enter on tile config would interupt the standard event, opening the "Assign Journal" window instead of saving the tile config
- replaced deprecated way of getting macro, this created large warning texts in the console
- was selecting elements too generically, this would have caused issues if multiple tile configs were open at once.

# Version 1.2.1

## 🐛 Bugs squashed
- crypto.randomUUID is not available over HTTP. Fallback to crypto.getRandomValues if connected over unencrypted HTTP

# Version 1.2.0

## ✨ Features
- 🎨 Huge addition of customizable styles
- 🖼️ background for terminal, can use either an image or video
- 🖌️ default styles (fallout, alien, star wars, cyberpunk, blade runner, two generics)
  - included 16 audio files for style quick starting
  - included 5 backgrounds
- 🔊 terminal can now play audio files
- 🗺️ can enable a button to reveal map (applies to all whole party)
- 🔇 link to abmient volume
- ☢️ add Fallout terminal unlock success line
- make screensaver optional
- make screensaver respect the client's performance mode
  - screensaver runs in a minimal mode on Linux Firefox since it has bad performance there
- new style form
- add preview of modal when closing terminal as GM
- large validation coverage when saving tile settings

## 🐛 Bugs squashed
- logic to catch journal undefined errors

# Version 1.1.0

## ✨ Features
- 🛗 support for `levels` module!
- ✅ now can restrict access for skill checks! (not full sys. integrated skill checks)
- 🔓 can unlock doors from the terminal!
- new UI for when a player is waiting for a GM to approve a skill check
- many more notifications (e.g. common warnings and errors)
- will give notification for user when a door is unlocked or a skill check is passed. Uses specific lines for popular game sys. (e.g. Star Wars game system says "pure pazaak", Red: "preem work", Blade Runner: "faster than any skin job could", Alien: "maybe it isn't game over") 💪🤝💪🏿
- now will give a notice of what players see when closing a terminal as a GM

## 🐛 Bugs squashed
- terminal tile setting would sometimes be nested breaking the injected HTML
- terminal showed content for all pages irrespective of their permission
- tile settings would try and save to db when no journals exist
- fixed a few unexpected GM behavior

# Version 1.0.0

## 🌱 First release! 

> Checkout the storefront at [codabool.itch.io/terminal](https://codabool.itch.io/terminal)!
