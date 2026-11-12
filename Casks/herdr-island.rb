cask "herdr-island" do
  version "0.3.0"
  sha256 "4801d8f9faef0d90d97d40c45c93978ee582544e418b80ef21ef2ae7cdb4d57b"

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

  zap trash: [
    "~/Library/Application Support/HerdrIsland",
    "~/Library/Caches/HerdrIsland",
    "~/Library/Preferences/local.herdr.island.plist",
  ]
end
