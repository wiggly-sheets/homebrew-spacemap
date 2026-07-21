cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "4ae5fb02277c63eb0d0cc930c2f7bd21b5d492341ce267e34a85e2b094870cd6",
         intel: "bc291a93e408ddb027dcb9713016605a35047164bd01b4899179882b123d2579"

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
