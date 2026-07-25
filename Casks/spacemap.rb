cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "3cf78b73cbf946a755a0c81bb107f2010cc4a5f9ecca1578a81bd5ef389e32d7",
         intel: "432af3fe285ab9afafddbba61902f9c818c0ec445511f1fe5811ca13ff2b6ac6"

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
