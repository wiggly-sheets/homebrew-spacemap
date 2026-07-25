cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.9"
  sha256 arm:   "576fba040d7d8d3b182ac7d9a51e77831980d2d4d01953d86dd2d557312f5f97",
         intel: "bfe0015e2fe42a1f43db978cdfed472e2937092a77ab969a7023b354c30865f4"

  url "https://github.com/wiggly-sheets/spacemap/releases/download/v#{version}/spacemap-#{version}-#{arch}.dmg"
  name "spacemap"
  desc "Yabai workspace visualizer"
  homepage "https://github.com/wiggly-sheets/spacemap"

  depends_on macos: :ventura

  app "spacemap.app"

  zap trash: [
    "~/Library/Preferences/com.spacemap.plist",
    "~/.config/spacemap",
  ]
end
