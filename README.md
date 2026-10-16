# Aqib Javed's Mac apps on Homebrew

```sh
brew install --cask aqibjavedzeepalm/tap/notchet
brew install --cask aqibjavedzeepalm/tap/displayshift
brew install --cask aqibjavedzeepalm/tap/scrollwise
brew install --cask aqibjavedzeepalm/tap/stackyard
```

| App | What it does | Page |
|---|---|---|
| Notchet | Clipboard manager that lives in the MacBook notch | https://aqibjaved.dev/apps/notchet/ |
| DisplayShift | Moves windows to a monitor when it connects and puts them back | https://aqibjaved.dev/apps/displayshift/ |
| Scrollwise | Natural scrolling on the trackpad, classic scrolling on a mouse | https://aqibjaved.dev/apps/scrollwise/ |
| Stackyard | Every SDK and toolchain version, which projects use it, and what to remove (free, open source) | https://aqibjaved.dev/apps/stackyard/ |

Every app is signed with a Developer ID and notarized by Apple. The downloads are the same zips as on the apps' pages,
from the [mac-apps releases](https://github.com/AqibJavedZeepalm/mac-apps/releases). Stackyard's DMG comes from
[its own releases](https://github.com/AqibJavedZeepalm/stackyard/releases) and doesn't update itself, so `brew upgrade` updates it.

The apps update themselves, so `brew upgrade` leaves them alone (`auto_updates true`). To remove an app and its
settings: `brew uninstall --zap --cask <name>`.

Each release bumps its cask here: `~/Projects/mac-apps/release.sh` writes the new version and checksum.
