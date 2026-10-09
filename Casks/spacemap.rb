cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "ed7463173ed08a7e0cf0599b481299246e7573f5dd20ab2bdfbaaaedcf1edd59",
         intel: "24c5e308d37972db851e3ce637f9562441b0008b5351998a2b7a80e03398a369"

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
