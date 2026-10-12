cask "displayshift" do
  version "1.7.7"
  sha256 "d2947af03ec8fff0faadbd582f6fbec2c95d6e8742aea4963784d8f9435bb35b"

  url "https://github.com/AqibJavedZeepalm/mac-apps/releases/download/displayshift-#{version}/DisplayShift-#{version}.zip"
  name "DisplayShift"
  desc "Moves windows to a monitor when it connects and puts them back"
  homepage "https://aqibjaved.dev/apps/displayshift/"

  livecheck do
    url "https://aqibjaved.dev/apps/displayshift/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DisplayShift.app"

  uninstall quit: "com.aqibjaved.displayshift"

  zap trash: [
    "~/Library/Caches/com.aqibjaved.displayshift",
    "~/Library/HTTPStorages/com.aqibjaved.displayshift",
    "~/Library/Preferences/com.aqibjaved.displayshift.plist",
    "~/Library/Saved Application State/com.aqibjaved.displayshift.savedState",
  ]
end
