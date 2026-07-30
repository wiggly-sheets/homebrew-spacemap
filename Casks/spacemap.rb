cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.30"
  sha256 arm:   "0a9677947d2256297b3aa740f8028a8a08ad6dd0fe4932e01d74be8ece28b930",
         intel: "5a8227b622c8aa2f21c7b36543cdc67ce216bbf3b402c2f093895562c136b217"

  url "https://github.com/wiggly-sheets/Spacemap/releases/download/v#{version}/spacemap-#{version}-#{arch}.dmg"
  name "spacemap"
  desc "Yabai workspace visualizer"
  homepage "https://github.com/wiggly-sheets/Spacemap"

  depends_on macos: :ventura

  app "Spacemap.app"

  zap trash: [
    "~/Library/Preferences/com.spacemap.plist",
    "~/.config/spacemap",
  ]
end
