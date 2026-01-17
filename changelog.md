<pre>
                                                -----
                                              /       \
                                              )       |
       :================:                      "    )/
      /||              ||                      )_ /*
     / ||  Changelog   ||                          *
    |  ||              ||                   (=====~*~======)
     \ ||              ||                  0      \ /       0
       ==================                //   (====*====)   ||
........... /      \.............       //         *         ||
:\        ############            \    ||    (=====*======)  ||
: ---------------------------------     V          *          V
: |  *   |__________|| ::::::::::  |    o   (======*=======) o
\ |      |          ||   .......   |    \\         *         ||
  --------------------------------- 8   ||   (=====*======)  //
                                     8   V         *         V
  --------------------------------- 8   =|=;  (==/ * \==)   =|=
  \   ###########################  \   / ! \     _ * __    / | \
   \  +++++++++++++++++++++++++++   \  ! !  !  (__/ \__)  !  !  !
    \ ++++++++++++++++++++++++++++   \        0 \ \V/ / 0
     \________________________________\     ()   \o o/   ()
      *********************************     ()           ()
</pre>
# Version 4.0.9
- add a button to help people learn the Terminal API
- add a GM button to open Terminal for players without the need for tokens to move onto the tile

# Version 4.0.8
- fix an issue with token movement when on teleport movement

# Version 4.0.7
- make sure preset colors are read only. Users were able to bug presets by tweaking values they shouldn't be able to

# Version 4.0.6
- maintanaince changes, add more CLI flavor commands, remove warning for use on v14. Actually remove button that wasn't applied in 4.0.4

# Version 4.0.5
- hotfix for v13, new changes broke Terminal

# Version 4.0.4
- fix darkness, detect motion, control actor
- removed button for detach as it is too complicated for an initial v14 release

# Version 4.0.3
- add initial support for V14. Several features are still broken: window detach has bugs, darkness toggle, detect motion, control actor. This is just to add initial support. Fixes will come soon.

# Version 4.0.1
- add a scrollbar when needed

# Version 4.0.0
- finished fully featured CLI mode. 
  - there are still buttons which the user can press, this is a compromise for now. Ideally I would have users type `sudo` for skill checks. But that can be a future improvement.
- major rewrite of how skill check text is added to Terminal. A better approach is used now which should in the long term have less issues.

## 🐛 Bugfix
- removed misfiring notification about region trigger linking
- fixed a few issues with shadow terminals & SSH
- due to the rewrite on skill check text there is no longer any issues with premature viewing of the success result before passing the check. 
# Version 3.5.1
- got a full coverage of features for CLI. But it's in a broken state. Fix coming soon.
- Toggle lights now uses the scene from the parent tile is located. Previously it was just whatever scene the user was looking at.

# Version 3.5.0
- add beta CLI mode, limited functionality. CLI mode can be used to read pages in the journal. More feature coverage will be added in future updates. I'm busy working to get my next module out for a late October release. See [stargazer](https://codabool.itch.io/stargazer) for more.

# Version 3.4.5
- fixed a long standing issue of Terminal not properly resizing. This one was difficult to pin down because of how inconsistent it was. This was because it was a race condition. Should be resolved now. Another update soon to come.

# Version 3.4.4
- fixed tooltips being cutoff. Removed a related hacky workaround that did not even work.

# Version 3.4.3
- added a checkbox for disabling sharing the terminal journal, for players
- the tooltip for one config was getting clipped. This has been fixed, all tooltips have a consistent font size now too.

# Version 3.4.2
- Resolve new item-piles compatibility issues that showed up again (thank you both @x3dog & @Siggysaw for the report ❤️)

# Version 3.4.1
- Foundry seems to have weird behavior API changes that I've only seen in 13.344. I'll just post a notice if that version is detected. Prompting to upgrade to 13.345 which no longer has the token movement API behavior change.

# Version 3.4.0
## 🐛 Bugfix
- fix a libwrapper issue, namely with item piles. But probably was affecting others too (Thank you @Siggysaw for the report ❤️)
- removed 3 deprecated Foundry API calls with latest
- removed teleport region behavior simulator because it is not working in V13 and it would be too difficult to continue support for it
- fix a maximize bug where terminal would be stuck in a unusable small window

# Version 3.3.2
## 🐛 Bugfix
- password and macro arguments were not editable in terminal config. Thank you @Macskay for the report

# Version 3.3.1
- porting over features from 3.2.6 & 3.2.5. Namely Shadow & Observe actor fix

# Version 3.3.0
## Deprecating V12
This is early but I am finding that the last version of Terminal is stable enough. There were a few UI breaking changes that would have been time consuming to split on the two Foundry versions I was supporting. So, instead all future updates are going to be V13+ minimum. However, if a major bug crops up I'll put out a fix for V12. This unfortunately means The below features are locked behind upgrading to V13 😔

> this gets said a thousand times over in the Foundry community but perform a backup of everything before upgrading to V13! Don't upgrade without giving yourself time to do a rollback if necessary.

## ✨ Feature
- New config which disables Terminal if an encounter is happening
- Can now run a macro as the triggering players, without a GM-proxy

## 😎 Code Trimmed
- since this update doesn't support V12 anymore, I was able to remove plenty of lines of code. Which keeps the project maintainable.

# Version 3.2.7
## 🐛 Bugfix
- some windows did not have scrollbars added to them

# Version 3.2.6
## 🐛 Bugfix
- observe actor was broken in a few ways. Fixed a few issues with it. (THANK YOU anonymous for the report!)

# Version 3.2.5
## ✨ Feature
- Beta testing Shadow Terminals. These allow anyone to watch a mirrored version of another user's Terminal.
  - there are limitations for this feature. Namely no panning, cannot see the skilled / item required window. More details can be seen in the new Shadow window, accessible from the controls panel on the left.
- new naming tags on the top of terminal windows. If a terminal opens as a "SHADOW" or a "SSH" it will have that displayed in the title
- more detail in skill check confirm dialogs. For example previously if a player attempted to decrypt a page. It would inform the GM they are attempting to "decrypt a file". But will now say in addition the title of the page. A similar thing happens for most skill checks. Door checks say the name of the door if defined. Macro skill checks say the name of the macro. This can help the GM approve more accurately.

# Version 3.2.4
trying an empty version bump to solve 2.6.8 being the max version for Foundry v12

# Version 3.2.3
## ✨ Quality of Life
- Can add multiple Secure Shells to a single terminal now.

## 🤕 Breaking Change
- The only breaking effect of this is that if you had a rename value for Secure Shell. It is now lost. You will need to go under the Rename Buttons UI and rewrite this value

# Version 3.2.2
## 🐛 Bugfix
- There were 2 anonymous reports about issues with the map reveal. I think this will resolve the issue. It seemed if users had a token selected it would interfere with map reveals. The report had mention that browser tab focus had an impact but I haven't been able to replicate that.
- fix notifications about "click listener canceled" when it wasn't

## Minor things
- styling improvements ensure that a scroll bar exists on Terminal tile tab in v13
- text changes which clarify things when needed

## v13 verified
- tested for no feature breaks for the latest [v13.337 test release](https://foundryvtt.com/releases/13.337)

# Version 3.2.1
## ✨ Feature
- new config that allows for scene switches to happen before observe tokens.

# Version 3.2.0
## ✨ Quality of Life
- In V13 when adding a macro to the Terminal. You can now also click on a macro in the bottom hotbar. (this is V13+ exclusive, V12 will not support this)

## 😎 V13 ready
> Foundry V13 was already supported but there were features broken

- In V13 the tile quick style window was unusable. The color picker wouldn't work and submitting the form wouldn't work. These are fixed
- In V13 adding a required item was totally broken in V13. I couldn't get my fancy function injection solution fixed. So, I've reverted to a legacy click listener which should work fine.

## 🐛 Bugfix
- Fixed bug of macro locks preventing macro use even when `Single Use Macros` was left unchecked
- Fixed a few styling issues

# Version 3.1.13
## 🐛 Bugfix
- Fix an issue where repeatedly walking onto a Terminal meant it would no longer play its startup audio

# Version 3.1.12
## 🐛 Bugfix
- Light theme had a broken header. A fix is coming soon for Pathfinder players that are using `Dorako UI` + `Doraku UX` which will automatically add `Terminal` to the exclude list. But for now you can just add it manually.

# Version 3.1.11
## 🐛 Bugfix
- fixed an issue where the maximize & close button no longer showed in Foundry V13
  - there is still a [reported issue](https://github.com/CodaBool/terminal/issues/20) of this happing in V12 but I haven't been able to reproduce that

# Version 3.1.10
## 🐛 Bug Hotfix
- there was another issue with the Terminal from 3.1.8 that is now fixed. The tile config would wrongly inject HTML when it shouldn't and I believe on v13 it wouldn't inject when it should.

## Features
- added a way to cancel the add Regions listener

# Version 3.1.9
## 🐛 Bug Hotfix
- I switched to another token movement detection hook and it completely broke how Terminal should be opened. I would switch back to the old one but it would break the V13 support I wrote. So, I'll just work with this. Basically if ANYONE stepped on a Terminal all players would open the Terminal. This has been resolved. It checks for the following three items before allowing a token based opening
  - the token is owned
  - you are on the right scene
  - you have the token that did the movement selected

> this does add the unintended effect that if anyone who owns a token and has them selected but is moved by another player. Then both players will have the Terminal open. I think this is will have to be the behavior going forward.

- there was also a report for Skill checks not working but that might have just been related to the above bug. If you have have any issue with that report onto the already opened issue [here](https://github.com/CodaBool/terminal/issues/19)

# Version 3.1.8
## Foundry V13 support
- the prototype is here and its already supported 💪

# Version 3.1.7
## 🐛 Bug Hotfix
- password screen styling was broken with last update

# Version 3.1.6
## 🤕 Breaking Change!
- cleaned up code related to how backgrounds and splash files were shown. This does break a current pattern of behavior. Normally the background file will get used for the splash if one is not specified. Now to allow for more fine control, you must use same file in the splash field as the background field to keep the same behavior. Because by default now it will use your back color to generate a placeholder image for your splash (exactly like how it does for the background/non-splash file).

## ✨ Features
### 20 new style presets! (yes TWENTY)
> Warhammer and Lancer now have a default style!

- all 20 new styles come with their own new splash and background animations, this means 40 impressive animation files have been added to the module. These have all been optimized for web with the average file size for these animations being ~ 300kb. This means you have several easy options for designing the look and feel of your Terminal. While still keeping asset load times snappy. I'm excited to mix and match all these new animations and share them with you today.

## Other Changes
- made scan effect occur less frequently
- custom and preset styles are given distinct background colors in both the tile config and style editor window
- preset styles are hidden by default in style editor window
- custom styles always show first
- Terminal close prompt for GM, that said "This is a copy of what players would see". Can now be set to never show
- made terminal sidebar buttons have a wider border on the horizontal sides
- added a new style setting, for showing the ASCII art and loading bar. This used to be determined by if the splash file was a video or image. However, this now is its own configurable setting to allow for more control.
- added a script that runs behind the scenes to add missing style presets on startup. As well as adding properties that do not exist yet on style presets.
- added a new image that can be chosen for quick tile background. In addition you can now check if you want a light to be placed to help players find the Terminal. Finally you can also pick a tint for the tile image right in this same window (talk about efficient, I know I will be using it!).

## Upcoming
> This has been a very time consuming process to make all these new styles but has been something I've wanted to do for several months. Now that this and also Region support is done. I will take a look at some of these other features I wanted to look at:

- a type mode, where commands can be entered by keyboard
- attempt to make a "book" or "paper" style so that DnD/Pathfinder folk can join the fun
- ability for GM to run a lockdown macro, this stops users from using a Terminal and displays a timer

# Version 3.1.5
## 🐛 Bug Fix
- Levels integration was broken, it seems since v11 or so there is a Levels API to use instead. Migrated to that and everything works. Thanks to anonymous for the bug report on that.
  - this is the second time I've gotten really useful feedback from the in game feedback feature. Thank you guys for that ♥️

## Upcoming
- I have a boat load of fresh style presets that should drop this month. I will add presets for Warhammer, Lancer and new ones to Alien, Cyberpunk. As well as ones generic enough they can be used for any system.
- Foundry devs are working on V13 and with that the tile config is being migrated to ApplicationV2. This will require some major code changes to support. I requested a prototype early but seems I'll have to wait for the public prototype. Which isn't really an issue. Last time, V12, it took several months for the prototype to become stable. Plenty of time for me to keep the migration smooth.

# Version 3.1.4
## 🐛 Bug Hotfix
- fixed a MEJ conflict which would break all click listeners (this would have also created issues with several other modules, but MEJ is common). This was rooted in not using libwrapper when needed.

# Version 3.1.3
## ✨ New Features
- teleporting a token from Region behavior is now supported

# Version 3.1.2
## 🐛 Bug Hotfix
- fix issue with changing a region trigger

# Version 3.1.1
## 🐛 Bug Hotfix
- fix issue with adding a region trigger

# Version 3.1.0
- I explored integrating with Google Chrome's in browser LLM, Gemini Nano. To help GMs with writing journal entries. However, while the model is usable in the latest stable version of Chrome, it does have limitations (hardware and needs feature flags turned on). I'll probably check out a LLM integration feature using API keys some other time down the road.

## 🗺️ Regions Integration
- You can now trigger Region behaviors from the Terminal. A new UI button has been added to the tile config for this
  - There are several important things to know for how to set this up. But I've listed those out in the UI, and should clear everything up
## ✨ New Features
- the "download map" feature now has an option to share to the whole group (which was the old behavior before Foundry V12)
- Since Terminal 3.0.0 there is better support for cross scene usage. However, the default behavior should still be to close the Terminal when the scene changes. This is now true but there is now also a config to allow for the Terminal to <b>not</b> close when the scene changes

# Version 3.0.1
> still investigating a styling issue I observed on someone else's machine from a session I did. They had a 1920x1200 screen but I can't seen to replicate it with those dimensions. If anyone runs into styling issues where Terminal is unreadable please report it using the Feedback screen or Github issues tab with their screen size.

## 🐛 Bugs squashed
- several fixes for ASCII styling
  - set the terminal content font to a more appropriate font
  - fixed a long standing issue where the ASCII did not display the spacing correctly
- added a script which will run on startup and update the default terminal styles if they have drifted
- added some styling accommodations for small 720p height and below screens
- fixed another long standing issue of the tile config having the incorrect height when opening (and shows a scrollbar)

> I noticed tile config icons are not working on Blade Runner game system. This seems to be a bug with Blade Runner system. I opened a support [ticket](https://github.com/fvtt-fria-ligan/blade-runner-foundry-vtt/issues/52) to see if they are aware of it.

# Version 3.0.0
> more details can be read on the devlog [here](https://codabool.itch.io/terminal/devlog/786464/terminal-v30)

### Major Config Migration
> A new migration script will guide users through this automated process

- migrate from IDs to UUIDs for Doors and SSH
- migrate to using a tile flag instead of a global settings config for storing style associations

### ✨ Other Changes
- migrate to ApplicationV2 fully
  - this has the major benefit of now giving a full stacktrace and line number when an uncaught error is thrown inside the Terminal Application
- Major code changes, 18% reduction in the size of the codebase
- Rename feature, can now rename certain aspects of the Terminal
- quality of life changes:
  - can see the new state of lights or doors when altering them. This changes the ASCII art and no longer uses ui notification toasts
  - view buttons, Doors and SSH now have view buttons. These pan and ping on the placeable for easier configuration

# Version 2.6.7
- use different macro directory open method for Foundry V10

# Version 2.6.6
> This likely will be the last release for Terminal in Foundry V10. Since I've begun work on Terminal version 3 which will only support Foundry 12

- Foundry V10 hotfix. New selection method from 2.6.5 did not work on V10. Rolling back to a previous click listener method. Thank you to JJ for the bug report

# Version 2.6.5
- replace method for associating macros, journals, items and actors to Terminal. This new method injects code into existing Foundry list click listeners. This new method is especially an improvement for macros and journals. This is becuase before you could not utilize folder and search functions. Since I was building my own UI for journal and macro lists. This should make finding macros or journals in long lists much easier. This has been verified working in V11 & V12. Submit and issue if you see any issues with associating macros, journals, items and actors.

# Version 2.6.4
### Development Update
> I've started on a v3.0 for Terminal. This will only be supported on Foundry V12+. Going forward with that I actually won't provide any more feature updates for V10-V11 and will be working solely on V12. which actually allows me to remove a lot of old code. I had to rewrite the Terminal window fully to use Foundry's new AppV2. Doesn't necessarily add any benefits (it is certainly making debugging 100% better since I'm now given line numbers for stacktrace instead of "handlebars failed to render the template") but will be good for the longevity of the project. Foundry devs have mentioned that AppV1 will eventually go away.

> A commonly requested feature is customization of some hardcoded text, the v3.0 release will add that feature.

> Additionally the v3.0 release will fully switch to using UUIDs instead of IDs. Since that is what Foundry V12 copies to your clipboard when you click on the ID now. Switching to using UUIDs is pretty interesting. This does require a rewrite for many things and I'm currently thinking will also require a migration script for users to run. Using UUID over tile ID is also the major blocker for having some features of Terminal only work on the scene of the Terminal's tile. Once I get a implementation that uses UUIDs and is stable you will be able to fully use a Terminal from another scene, and have it interact with things that are off scene! (i.e. Unlock a door that is in another scene). Many complications to solve before I want to release this though.

> as for the module, well I'll have more details soon.

- Support for `window-controls` module
- fix a typo
- fix a css class from being too broad

# Version 2.6.3
- Allow for Secure Shell button to have custom name

### Development Update
> I have been hard at work for a new module. It has a lot of overhead and is taking a lot of time but that's just what it takes to make competitive modules on Foundry. There are a lot of talented devs out there. I did end up creating a whole website for this next project, which is done as of today. The website part is FOSS and you can see it on my GitHub.

> as for the module, well I'll have more details soon.

# Version 2.6.2
- fix an issue of the observe actor timer lock not being able to be removed, becuase it expects the GM to be on the source scene
- added autoloop to splash screen videos

# Version 2.6.1
- hotfix, if not using new decode animation there would be a error about TextPlugin not being defined. Only affected non-Forge users

# Version 2.6.0

> Terminal just got more stylish!

## ✨ Features
- Added new style option `noise` effect
- Added new style option CRT TV `scan line` effect, this uses your Base color to tint itself. I really like how this one turned out
- Added new style option `Decode animation` which will add a letter scrambling effect to headers 1 - 3. i.e. If you create a page with a header 1 and have this on it will animate that header when clicking on the page. An important thing to note is that it cannot contain child elementes, like spans.
- Added new style option `Glitch` effect. This adds a 1 in 7 chance to have a warping effect on the interface of the Terminal.
- Scripts used for animated text are preloaded if on the Forge
- Resized and removed padding from some elements. This should just improve on the existing layout

## 🐛 Bugs squashed
- Detect Motion would not minimize and pan if it was behind a skill check
- V12 map reveal was not working if behind a skill check
- fixed the splash video not scaling to fit the window
- use new foundry.audio.Sound if on V12
- skill checks would sometimes not update their text to include a button that users could click
- same issue with splash, it would sometimes not update correctly
- made default color based background a tad more opaque, it was barely visible

# Version 2.5.3
- hotfix non-forge module was broken

# Version 2.5.2
- hotfix Forge issue that the Terminal window would request already present JS module and stall asset rendering

# Version 2.5.1
- Vast improvements for Forge performance. If you're on the Forge expect 80%+ faster asset loading.
- New asset caching functionality. This will leverage CloudFlare edge networks caching to get asset load times down as much as possible. There is a new game setting for Terminal which enables this feature. Consider this experimental (off by default), but I'm seeing 50ms load times for even large files with this configured on. I do implement parts of the feature for The Forge by default since this is CloudFlare targeted and Forge uses CloudFlare.
- Made audio calls asynchronous. The immediate feedback with delayed audio feels better than stalled overall feedback for things like buttons.

## Bugfix
- Fixed a unhandled error that got thrown in V12 due to a class naming conflict

# Version 2.5.0
- the deafult style now uses a border image
- can now set a splash video or image. If using a video, the ASCII and loading bar won't be displayed. Which effectively makes the video splash a full replacement for the standard ASCII loading screen. Warning, if using a video for both the splash and background. These files are not preloaded and you will see significant delay when your sever is not close to the client. For this reason the next update will include preload functionality which should greatly help any large network requests.
- Detect Motion can now be limited to a specified range. This is very useful for Cyberpunk RED, which has rules that mention range based token detection.
- There is now an option to only have the macro run once. This is useful for complex macros which you wouldn't want the players to run more than once.
- Detect Motion and Observer Actor now have built in locks which only allow one to be running for a terminal. If the button is pressed a second time while one timer is still running, a message about that process already running will be displayed. This did introduce some risk in that if the GM reloads before the timer is removed this would permanently lock that timer with no easy way to remove it. For this reason I also implemented a safety mechanism. 15 seconds after a GM reloads Foundry it will remove all timer locks on all Terminals.

## Bugfix
- only validate on tiles that the GM is currently on the scene for

## Upcoming
- preload files

# Version 2.4.1
- Full support for `puzzle-locks` module, you can now have a specific page locked behind a puzzle lock or have the entire Terminal behind a puzzle lock
- UUID links weren't being parsed like they would be with normal journals. This is now being done. So, you can easily link to other actor, journal, items inside Terminal pages

## Bugfix
- V4 Terminal macros were broken, they are working now under the new V5 name. If you have any Terminal compendium macros. Delete them and import latest.

# Version 2.4.0
- Complete rewrite of how collision with a Terminal tile is determined.
- A significant rewrite in how listeners are attached to buttons and inputs in the tile config. It should be much more reliable without losing your configuration at times. This does mean you will have a dialog popup when editing text inputs but should be a net benefit to user experience.
- moved the beta settings out of beta, they have been stable for long enough

## Bugfix
- dragging a token over and past a Terminal will no longer open it up. It will notify you that you walked past one but will no longer open. This used to be exploitable since you could then walk with the Terminal still open around the scene.
- all tile config changes immediately save. There is no longer the issue that some field's data would get wiped away when configuring some other field.

## Upcoming
- The last 2 updates have been a lot of behind the scenes changes. I can hopefully focus on some of the items on my todo list. Here is a copy of that:

> all subject to change
```
- revisit permission reset / local Terminal only mode
- research compatibility puzzle & console module
- give way to control if observe token is just for individual or everyone
- Observe Tokens has bugs
- create GitHub Wiki
- validation on Global Illumination, it conflicts with some features (i.e. starfinder has this on by default)
- don’t allow multiple of the same JavaScript timers to run (rewalking on Terminal is one)
- main character mode (one person uses Terminal and all others watch their actions)
- add option to have the macro button only run once
- range based detect motion for Cyberpunk RED
- allow for users to add a splash / video for the loading screen
- integrate with Net Elevators
- ability for GM to activate a Lockdown, this stops users from using a Terminal and displays a timer
- more visual effects (filters, text animation)
- have the V12 implementation of share map be shareable for entire party
- research an LLM API to help write journals / templates
- Darkness, should add checkbox for this region only (would need to scope down. i.e. only in current region, and would just toggle existing behavior)
- ASCII preview looks different than how it does in Terminal
- allow option to preload data for places like The Forge (images, audio, video)
- use a border image by default for newly created styles
- research an integration with Lancer
- BUG: GM should get notification on if the alter door was an unlock or lock action, when ran as a GM
- BUG: walking off too fast keeps Terminal open
```
# Version 2.3.0
- Use ApplicationV2 & DialogV2 in most places that's possible (only spot missing it is GM approve dialog). You will only see this new UI if using Foundry v12+
- Terminal compendium macros can now read new UUID format of Foundry v12

## Bugfix
- will now do a check if the tile and token are on the same elevation

# Version 2.2.1
## compatibility
- ensured all features were working for Foundry v12.320. There were a couple features which weren't working but now they are.
- set the max core version for the module to 12. So, whenever they end up releasing it people can install the module day 1.

## Bugfix
- ownership wasn't being reset correctly for observe token

## Future compatibility
- I found a terminal adjacent module out there called `console`. It doesn't seem like it would cause any conflicts with how Terminal works. But I should test it out more.
- I also want to ensure support premium `puzzle-locks` module

# Version 2.2.0
## Hotfix
- There was a MAJOR issue for The Forge users. It was mentioned 3 months ago once but a recent bug report brought it up again. I investigated it and this module was nearly unusable on The Forge. Whoever, has been playing on The Forge, I'm sorry it took me 3 months to catch this issue. I'll test on that platform before major releases in the future to make sure it doesn't happen again. Thanks to whoever submitted the report yesterday

# Version 2.1.1
## Hotfix
- Secure Shell was having issues selecting elements with the last update. I noticed that changing those elements to classes instead of ids fixed the issue. Another bizarre JavaScript bug on the books. I get that ids are supposed to be unique but it worked 1 month ago. So, not sure what changed. This could cause other bugs to crop up. So another hotfix may be in the cards.

## known issues
- in 2.1.0 I added a feature to have the camera pan to a random token for detect motion. If there is a skill check on this feature. Then the pings are ran GM side. This means that the pans happen GM side. Which is not intended. I'll have a fix for that in next update.

## Upcoming
> these are all subject to change

- don't allow multiple of the same timer to run
- main character mode (one person uses Terminal and all others watch their actions)
- add option to have the macro button only run once
- range based detect motion for Cyberpunk
- validation against global illumination for Starfinder
- buy and check compatibility with theripper's puzzle module
- allow for users to add a splash / video for the loading screen
- look into an integration with Lancer
- revisit permission reset / local Terminal only mode

# Version 2.1.0
## ✨ Features
- all skill checks are more clear about what is going on behind the scenes. Players will now see a "permission denied". With the option to do a skilled action. Which then transitions to a loading icon. While the GM approves or denies. Then they either get a new permission denied screen. Or then get the success screen. This vastly improves the player experience when it comes to skill checks.
- detect motion will now pan to a random non-dead non-hidden token in the scene. To help the player understand that there is new info on the scene
- add a quick style button, which will change the tile image if approved
- updated text in several spots for the tile config. To match with all the new features. For example the alter doors featured has new text since doors can now be more than just unlocked.

## 🐛 Bugs squashed
- fix bug where selected a button in Terminal did not trigger the normal CSS changes
- both included (compendium) macros were broken, they had a "ID is undefined" error. This has been fixed. If you have a V2 macro delete them and import the V3 macro. The module will give you a notification if it sees you have a out of date macro version
- added another validation when opening a Terminal, if the tile ID is for a Terminal not in the scene. You used to see "a style is not attached". This does not speak to the root issue. A new validation is done first checking if the tile can even be found in the scene first. This was common to run into when using the compendium macro to open a Terminal. Since it could be done from any scene. Despite not having that Terminal in the scene.

# Version 2.0.2
## ✨ Features
- allow for "open for specific user" macro to be dynamic and just be ran by triggering player when paired with Monk's Active Tile

# Version 2.0.1
## 🐛 Bugs squashed
- there was a bizarre javascript bug that I still don't fully understand. It would seem that there is a race condition or document.querySelector is not working the way I understand it to. Regardless I have ported that selection over to jquery and it seems to always fix the bug. If the issue comes up again I will do further research but for now I'm just happy to resolve this issue that seemed to only show up when using a non-image background style. Game systems like Alien, or Fallout should see their Terminals working again.
- monk's active tile triggers seems to trigger all actions and not just the first one, like I was experiencing at one point

# Version 2.0.0
> major code changes 1987 additions(+) and 549 deletions(-)
> from my testing all features working Foundry V10-V11 verified


## 🎯 Game System Specific
> For this update I read through the rules on several game systems.
> I found that these game systems make up the majority of Sci-Fi on Foundry:
> Starfinder, Cyberpunk RED, Star Wars FFG, Lancer, Alien RPG, Shadowrun, Warhammer: WG
> I purchased the PDFs or modules associated with blade runner, warhammer IM, warhammer WG, cyberpunk, starfinder, lancer, shadowrun, fallout, star wars FFG.
> This helped me design features which work generally. As well as targeted a feature specific to Starfinder and Alien.
> In the future I could do further integrations. Top of the priority list right now is Cyberpunk RED.
> They have a distinct rules around how a Terminal should be accessed. I hope to have a targeted update for Cyberpunk RED sometime this year.

## ✨ Features
- support PDFs
- fully integrate with Monk's Active Tiles, allowing for the triggers tabs to be ran from the Terminal UI.
- allow doors to be re-locked
- can require password for terminal entry
- can require an item for terminal entry
- feedback button on tile config, which allows you to quickly report bugs
- Turn power on or off (really just uses the scene darkness)
- can observe tokens, this can simulate camera or turret access or anything you can think of
- can limit token observation to a set time in seconds
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
> migrate to the "macro button" or use Monk's Active Tiles to regain these lost features

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
- Some tiles appear to be always breaking. The problem is inconsistent and the only solution is to recreate the tile until more information can be found (solved in 2.0.1)

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
