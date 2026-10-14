cask "displayshift" do
  version "1.7.8"
  sha256 "7e8120f779b2410ffdd533a1ac1e84a7c117a0a2e491d89b2413f38012cc14a9"

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
