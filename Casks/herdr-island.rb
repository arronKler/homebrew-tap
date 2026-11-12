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
  depends_on macos: ">= :sonoma"

  app "HerdrIsland.app"

  uninstall quit: "local.herdr.island"

  zap trash: [
    "~/Library/Application Support/HerdrIsland",
    "~/Library/Caches/HerdrIsland",
    "~/Library/Preferences/local.herdr.island.plist",
  ]
end
