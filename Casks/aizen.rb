cask "aizen" do
  version "0.1.8"
  sha256 "c177c0736fe673e4ccdb727d67d6eaf6c5a55a2794a37dd4d7a6b729d784707f"

  url "https://github.com/DarthBenro008/aizen/releases/download/v#{version}/aizen-#{version}.zip"
  name "aizen"
  desc "macOS menubar utility showing real-time AI subscription usage limits"
  homepage "https://github.com/DarthBenro008/aizen"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "aizen.app"

  zap trash: [
    "~/Library/Preferences/com.benrostudios.aizen.plist",
    "~/Library/Group Containers/group.com.benrostudios.aizen",
    "~/Library/Caches/com.benrostudios.aizen",
    "~/Library/HTTPStorages/com.benrostudios.aizen",
    "~/Library/WebKit/com.benrostudios.aizen",
  ]
end
