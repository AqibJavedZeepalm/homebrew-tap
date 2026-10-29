cask "scrollwise" do
  version "2.0.3"
  sha256 "13dac50b5af51d1d921d0b74394a9c9465a34a4b27aaea723cc1389cb7173663"

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
