# Homebrew Tap (`arronKler/tap`)

macOS casks maintained by [@arronKler](https://github.com/arronKler).

## Available Casks

| Cask | Description | Install |
| --- | --- | --- |
| **CordKey** | Remap wired USB/HID & Bluetooth headset buttons to Mac keyboard shortcuts | `brew install --cask arronKler/tap/cordkey` |
| **Herdr Island** | Notch island front end for the Herdr agent multiplexer | `brew install --cask arronKler/tap/herdr-island` |

---

## CordKey

Install the universal macOS app (`CordKey.app` in `/Applications`) and the `cordkey` CLI:

```sh
brew install --cask arronKler/tap/cordkey
```

> **Note**: CordKey is ad-hoc signed and not notarized by Apple, so the first launch needs one manual approval in **System Settings → Privacy & Security → Security → Open Anyway** (or `xattr -cr /Applications/CordKey.app && open /Applications/CordKey.app`). Grant **Accessibility** permission when prompted so CordKey can emit keyboard shortcuts.

Upgrade or uninstall (with saved settings):

```sh
brew upgrade --cask arronKler/tap/cordkey
brew uninstall --cask --zap cordkey
```

---

## Herdr Island

Install Herdr Island with Homebrew:

```sh
brew install --cask arronKler/tap/herdr-island
```

Homebrew downloads and unzips the release and moves `HerdrIsland.app` into `/Applications`. The app is ad-hoc signed and not notarized, so macOS still asks for one approval on first launch: open System Settings, go to Privacy & Security, and click **Open Anyway** in the Security section.

Updates are handled by Sparkle inside the app, so `auto_updates true` tells Homebrew to leave upgrades to it. Installing a new release by hand works too:

```sh
brew upgrade --cask arronKler/tap/herdr-island
```

Remove the app and its data with:

```sh
brew uninstall --cask --zap herdr-island
```

---

## Homebrew 6+ Trust Note

Homebrew 6 and later refuse to load a third-party cask until it is trusted. Using the fully qualified name (`arronKler/tap/<cask>`) records trust for that cask automatically. If you install by short name, trust it first:

```sh
brew trust --cask arronkler/tap/cordkey
brew trust --cask arronkler/tap/herdr-island
```

To trust the whole tap instead, including any cask added later, run `brew trust arronkler/tap`.
