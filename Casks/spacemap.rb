cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.21"
  sha256 arm:   "6d459979970da0e9ca87f9d742bc18a0c06bea7a6440d92df4fa083f97bba5cd",
         intel: "cc915e9bb5d60295baff970cd627d72a684e7546a027f1fce95d4c27fe88b0e6"

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
