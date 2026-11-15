cask "herdr-island" do
  version "0.2.2"
  sha256 "dfed72084c2c547e96f7325623227b38499cc403de30229a82bf7dfebe573567"

  url "https://github.com/arronKler/herdr-island/releases/download/v#{version}/HerdrIsland-#{version}.zip"
  name "Herdr Island"
  desc "Notch island front end for the Herdr agent multiplexer"
  homepage "https://arronkler.github.io/herdr-island/"

  livecheck do
    url "https://github.com/arronKler/herdr-island"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HerdrIsland.app"

  uninstall quit: "local.herdr.island"

  caveats <<~EOS
    Herdr Island is ad-hoc signed and not notarized by Apple, so the first
    launch needs one manual approval:

      System Settings -> Privacy & Security -> Security -> "Open Anyway"

    Updates come from the app's own signed updater. To force one through
    Homebrew instead, run:

      brew upgrade --cask arronKler/tap/herdr-island

    Remove the app and its saved state with:

      brew uninstall --cask --zap herdr-island
  EOS

  zap trash: [
    "~/Library/Application Support/HerdrIsland",
    "~/Library/Caches/HerdrIsland",
    "~/Library/Caches/local.herdr.island",
    "~/Library/Preferences/local.herdr.island.plist",
  ]
end
