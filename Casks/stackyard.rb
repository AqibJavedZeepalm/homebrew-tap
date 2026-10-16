cask "stackyard" do
  version "1.0.3"
  sha256 "9571165c774066a98c648c153e538376527b0e135fde6fcaeb79af15679eec10"

  url "https://github.com/AqibJavedZeepalm/stackyard/releases/download/v#{version}/Stackyard-#{version}.dmg"
  name "Stackyard"
  desc "See every SDK and toolchain version, which projects use it, and what to remove"
  homepage "https://aqibjaved.dev/apps/stackyard/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Stackyard.app"

  uninstall launchctl: "dev.stackyard.app",
            quit:      "dev.stackyard.stackyard"

  zap trash: [
    "~/Library/Application Support/Stackyard",
    "~/Library/Caches/dev.stackyard.stackyard",
    "~/Library/HTTPStorages/dev.stackyard.stackyard",
    "~/Library/LaunchAgents/dev.stackyard.app.plist",
    "~/Library/Preferences/dev.stackyard.stackyard.plist",
    "~/Library/Saved Application State/dev.stackyard.stackyard.savedState",
  ]
end
