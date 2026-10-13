cask "notchet" do
  version "1.0.9"
  sha256 "323c6d38d635118f83b13115338b89c5d9361d2143e44890f3e269cc1ff36bef"

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
