cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.12"
  sha256 arm:   "cdc65e25d4edf00df86ab7bf2db2485bbd0af5a1b6e3090ead2846605f5432bc",
         intel: "828e435605ae9257e46b7ed2befdce595695507e2c12dd785a936a6169694b10"

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
