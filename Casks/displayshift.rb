cask "displayshift" do
  version "1.7.20"
  sha256 "bf910106be76d093bceb5b2437de73a692a9e2c25fad78eb61a94ab7d11471c5"

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
