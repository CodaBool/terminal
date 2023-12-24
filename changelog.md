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

## Features
- ⚡ Performance mode respected for the skill check UI. The number of points will scale with the mode (e.g. high = more points).
- 🎨 Multiple styles! You can now create styles and each Terminal can have their own. Meaning there is no more global style. 
  - There was a lot of code changes that had to be made to make this happen. But it sets the module down the correct path and paves the way for some pretty sweet updates in the future.
- 🕵️ Validation when saving Terminal settings. Catches errors as early as possible.
  - Validation check on style
  - Validation check on Door ID
  - Validation check on exit and enter macro
  - Validation check on journal
- Will gracefully handle several misconfiguration cases now

## Bugs squashed
- Macros will no longer run if the Terminal is disabled.
- Will give proper error messages when a journal has not been assigned

# Version 1.1.0

## Features
- 🛗 support for `levels` module!
- ✅ now can restrict access for skill checks! (not full sys. integrated skill checks)
- 🔓 can unlock doors from the terminal!
- new UI for when a player is waiting for a GM to approve a skill check
- many more notifications (e.g. common warnings and errors)
- will give notification for user when a door is unlocked or a skill check is passed. Uses specific lines for popular game sys. (e.g. Star Wars game system says "pure pazaak", Red: "preem work", Blade Runner: "faster than any skin job could", Alien: "maybe it isn't game over") 💪🤝💪🏿
- now will give a notice of what players see when closing a terminal as a GM

## Bugs squashed
- terminal tile setting would sometimes be nested breaking the injected HTML
- terminal showed content for all pages irrespective of their permission
- tile settings would try and save to db when no journals exist
- fixed a few unexpected GM behavior

# Version 1.0.0

## 🌱 First release! 

> Checkout the storefront at [codabool.itch.io/terminal](https://codabool.itch.io/terminal)!
