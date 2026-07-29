cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.19"
  sha256 arm:   "ef731adb4d196e3c70d8e37ece134ec80caa55589520728d48a9c2e324ebe310",
         intel: "f30b159503aecba9e2fa696e2edde93ad8929e32f8ffd0ed82b81db7ac2bd925"

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
