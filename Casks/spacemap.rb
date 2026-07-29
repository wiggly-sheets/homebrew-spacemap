cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.24"
  sha256 arm:   "9faf002d2d577bdb9a1a0f0651ac4e738ec6f9dbe2cf4c5fe82b4dcf5fb6add6",
         intel: "5d82511cec99fdb3b44a2dbe45c78aab4f7cfeff1356d3b94b018820aa7bf3a2"

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
