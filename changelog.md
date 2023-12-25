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
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀
</pre>
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
