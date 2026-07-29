cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.20"
  sha256 arm:   "7cd2d99011c094ed105b06fae78b414e02d0f21eb0f8c2f0c93ac8a1035ac78c",
         intel: "a68492dbc5eb24665260d505592b47c53a2ab93fc290420488ff6f8721f22e32"

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
