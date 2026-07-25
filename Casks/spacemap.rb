cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "ab38840a4e9d963ec9e89356bdeaeed177c1f45d330490a055e445adec10d0d2",
         intel: "5cbfffa9701cf59f67dd070ee1afa08ffa3c24c68278b61bc6aa44cdbe2a4a50"

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
