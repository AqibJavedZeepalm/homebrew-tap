cask "scrollwise" do
  version "2.0.2"
  sha256 "c9e9b691c16f028d25a0ed78b65a0aa9fbbe49029f0df573c9022b6c53e9001c"

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
