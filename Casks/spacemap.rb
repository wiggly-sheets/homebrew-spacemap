cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.35"
  sha256 arm:   "b30f06c18e0c8c3246f1b678ba6bc65c27e0aa7374564fc9f00bb50b0e8287c5",
         intel: "a55927449eae462f58c86a9895d149f87ba8803578bcb9cbdb05a18ba733ded3"

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
