cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.11"
  sha256 arm:   "e259cf893d021a6956d56dc4386ef759f77f46f06652a3aec77b3f23c906690f",
         intel: "7bbfa06aebdfe0ee76fb812cedc0bdb082f53e0156e10f53178501ff9ee3d773"

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
