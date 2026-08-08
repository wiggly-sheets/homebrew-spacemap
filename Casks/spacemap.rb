cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.36"
  sha256 arm:   "ebe7acfde68c29d00ab4c03759334d22b454d83f8ac2eae90bfb82ad38ca9268",
         intel: "625a9c9b7c086d4df40889cf2a7298ee5a591b4776606935326b277f25512615"

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
