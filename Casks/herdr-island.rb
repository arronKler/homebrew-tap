cask "herdr-island" do
  version "0.2.1"
  sha256 "bee88fb9a7ec61c09c2da471eaf43b123d387486b6443253373cebfd158127f8"

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
