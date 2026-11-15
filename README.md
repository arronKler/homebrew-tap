# Homebrew tap for Herdr Island

Install Herdr Island with Homebrew:

```sh
brew install --cask arronKler/tap/herdr-island
```

Homebrew downloads and unzips the release and moves `HerdrIsland.app` into `/Applications`. The app is ad-hoc signed and not notarized, so macOS still asks for one approval on first launch: open System Settings, go to Privacy & Security, and click **Open Anyway** in the Security section.

Homebrew 6 and later require trusting a third-party tap once before it runs the cask. Either trust just this cask:

```sh
brew trust --cask arronkler/tap/herdr-island
```

or trust the whole tap with `brew trust arronkler/tap`.

Updates are handled by Sparkle inside the app, so `auto_updates true` tells Homebrew to leave upgrades to it. Installing a new release by hand works too:

```sh
brew upgrade --cask arronKler/tap/herdr-island
```

Remove the app and its data with:

```sh
brew uninstall --cask --zap herdr-island
```
