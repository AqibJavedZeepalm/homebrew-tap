cask "scrollwise" do
  version "1.2.3"
  sha256 "69eb02ad4d2ff8165d5f41ea6b53622dfd40959ff6056217e22d79a16dea13f8"

  url "https://github.com/AqibJavedZeepalm/mac-apps/releases/download/scrollwise-#{version}/Scrollwise-#{version}.zip"
  name "Scrollwise"
  desc "Natural scrolling on the trackpad, classic scrolling on a mouse"
  homepage "https://aqibjaved.dev/apps/scrollwise/"

  livecheck do
    url "https://aqibjaved.dev/apps/scrollwise/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Scrollwise.app"

  uninstall quit: "com.aqibjaved.scrollwise"

  zap trash: [
    "~/Library/Caches/com.aqibjaved.scrollwise",
    "~/Library/HTTPStorages/com.aqibjaved.scrollwise",
    "~/Library/Preferences/com.aqibjaved.scrollwise.plist",
    "~/Library/Saved Application State/com.aqibjaved.scrollwise.savedState",
  ]
end
