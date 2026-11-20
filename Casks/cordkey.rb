cask "cordkey" do
  version "1.0.0"
  sha256 "b60c0d7ad552b74df6ad4530bdbe2a13d1ac1e12481cfeaf310bd04825c2e8b4"

  url "https://github.com/arronKler/cordkey/releases/download/v#{version}/CordKey-#{version}-macos-universal.zip"
  name "CordKey"
  desc "Remap wired USB/HID and Bluetooth headset buttons to Mac keyboard shortcuts"
  homepage "https://arronkler.github.io/cordkey/"

  livecheck do
    url "https://github.com/arronKler/cordkey"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "CordKey.app"
  binary "#{appdir}/CordKey.app/Contents/MacOS/CordKey", target: "cordkey"

  uninstall quit:      "io.github.cordkey.app",
            launchctl: "io.github.cordkey.app"

  caveats <<~EOS
    CordKey is ad-hoc signed and not notarized by Apple, so the first
    launch needs one manual approval:

      System Settings -> Privacy & Security -> Security -> "Open Anyway"

    Or clear quarantine from the terminal once:

      xattr -cr /Applications/CordKey.app && open /Applications/CordKey.app

    Grant Accessibility permission when prompted so CordKey can emit
    keyboard shortcuts. The `cordkey` CLI is also linked in your PATH.

    Upgrade with:

      brew upgrade --cask arronKler/tap/cordkey

    Remove the app and its saved settings with:

      brew uninstall --cask --zap cordkey
  EOS

  zap trash: [
    "~/Library/Application Support/CordKey",
    "~/Library/LaunchAgents/io.github.cordkey.app.plist",
    "~/Library/Logs/cordkey-app.log",
    "~/Library/Preferences/io.github.cordkey.app.plist",
  ]
end
