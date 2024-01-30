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
