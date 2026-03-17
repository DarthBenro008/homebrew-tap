cask "aizen" do
  version "0.2.1"
  sha256 "a0c83517a52b9d290381d41707f2fdae8d50336af3660e15af09dde866281efc"

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
