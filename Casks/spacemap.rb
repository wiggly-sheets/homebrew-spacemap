cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.14"
  sha256 arm:   "d7b5c5c865d4ded09e5f473c6cac436782ae9aca7a72645373014eea6ff6d50d",
         intel: "4a9086b1186af4570ea2f2ccca318e9fa8cf487fb32a52e882b91797980997aa"

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
