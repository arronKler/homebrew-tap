# Homebrew tap for Herdr Island

Install Herdr Island with Homebrew:

```sh
brew install --cask arronKler/tap/herdr-island
```

Homebrew downloads and unzips the release and moves `HerdrIsland.app` into `/Applications`. The app is ad-hoc signed and not notarized, so macOS still asks for one approval on first launch: open System Settings, go to Privacy & Security, and click **Open Anyway** in the Security section.

Updates are handled by Sparkle inside the app, so `auto_updates true` tells Homebrew to leave upgrades to it. Remove the app and its data with:

```sh
brew uninstall --cask --zap herdr-island
```
