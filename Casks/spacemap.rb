cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.25"
  sha256 arm:   "0f51c88b8b251ff61e89e6e4f71bf2fbd830ffde84db0aded65ac50ac3430f22",
         intel: "6d723a84bd4c1c9f6ca324ac84356a88f3ce11bf28ea1ba9c1aefb5d63a3b55c"

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
