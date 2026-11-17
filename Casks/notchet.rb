cask "notchet" do
  version "1.0.23"
  sha256 "f28461fc06a8a783b88ad7e9adf326525416bf1fc481b2ab23c5f24070084885"

  url "https://github.com/AqibJavedZeepalm/mac-apps/releases/download/notchet-#{version}/Notchet-#{version}.zip"
  name "Notchet"
  desc "Clipboard manager that lives in the notch"
  homepage "https://aqibjaved.dev/apps/notchet/"

  livecheck do
    url "https://aqibjaved.dev/apps/notchet/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Notchet.app"

  uninstall quit: "com.aqibjaved.notchet"

  zap trash: [
    "~/Library/Application Support/Notchet",
    "~/Library/Caches/com.aqibjaved.notchet",
    "~/Library/Containers/com.aqibjaved.notchet.share",
    "~/Library/HTTPStorages/com.aqibjaved.notchet",
    "~/Library/Preferences/com.aqibjaved.notchet.plist",
    "~/Library/Saved Application State/com.aqibjaved.notchet.savedState",
  ]
end
