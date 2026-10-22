cask "displayshift" do
  version "1.7.13"
  sha256 "de2b1852ad60822a31f0496934a067f4ad4356515ae4f793d5d158f6e19e004a"

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
