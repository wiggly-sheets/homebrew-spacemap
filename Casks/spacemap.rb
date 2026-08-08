cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.37"
  sha256 arm:   "0cd2e2ac94f30a6fb207d307ccdf60bde07b1cc1697038da8d6cdd6804276b30",
         intel: "174f2fa90d326bce9bbe42914054e1b6a158c99193d0d400468d3b6fab40097b"

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
