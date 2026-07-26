cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.16"
  sha256 arm:   "daaf3d2a48a7b068da8a0132f7b2b4b79c51d7a8f7d7d5d828af8db57436fea2",
         intel: "bfc8f5d7b6283d7185432e20cbbc3eb3d41fe3fdc8606617b11618a3c4ce51fb"

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
