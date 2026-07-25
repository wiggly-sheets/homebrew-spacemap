cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.13"
  sha256 arm:   "ee045e023c13cc4edd1e1ca227ede427c19e5e17f02d257ad8fc1a8b30410727",
         intel: "c1dd8cc8352a3d2e8e1d68bfe3e766eff2a5fda3dc4866fef1aa073fa4633ade"

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
