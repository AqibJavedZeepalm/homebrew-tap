cask "notchet" do
  version "1.0.11"
  sha256 "df0cb757b952ecfc663296aabd8038e5eb01dde9db72ce1f98525339de9d391c"

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
