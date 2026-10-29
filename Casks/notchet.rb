cask "notchet" do
  version "1.0.14"
  sha256 "760e9c1081164cd065d29035c12bbc416e907919354df5ea60d6252f722a763d"

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
