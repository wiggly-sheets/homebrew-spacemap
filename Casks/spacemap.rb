cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "f1810676d36be882afadcee4192b67b8b5daab6b73e2b4b67faa20167ebb1ae3",
         intel: "9634e5afe87be238e0b9d4f483569a8ff0e90d481bc7c8344126f066efb006d6"

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
