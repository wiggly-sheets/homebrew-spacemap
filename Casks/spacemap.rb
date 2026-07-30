cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.31"
  sha256 arm:   "689a75accd64c42e4c7cbe178df5b7f9f78be70c51f0b474d1ea797041a81723",
         intel: "422d7f2f09ac328412fb2e16ab18284d0b7d5c210023fcf244e3bef2df95b1da"

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
