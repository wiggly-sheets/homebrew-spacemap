cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "3ed84590a3f7605423c4170c7fc8b357432090d77451f12ab18dc62901b4a7b3",
         intel: "2e4d2c2dda1b93c67d81c78b11e003fd31c01fa26b8e65db5d72beb01e81bf63"

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
