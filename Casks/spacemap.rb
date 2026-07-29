cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.23"
  sha256 arm:   "6cb98d358b4f9618a0e7eeaf0768845d8d7e4af8b85b8df49703a2f74d1eb35b",
         intel: "e8f57037adfdc5006d0a93af81479afca713813bfed25cf5964119661e25640e"

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
