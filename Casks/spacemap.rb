cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.27"
  sha256 arm:   "e08eeca0f443cbb8f3bbf0aa7f997dfd6dc4b7f054a932cc087952dd22710eef",
         intel: "47e816b85576d715755914eb93b2d5212844a6e79ea79821b2a4bfdb2c5e799a"

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
