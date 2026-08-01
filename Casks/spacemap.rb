cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.32"
  sha256 arm:   "3a407a00122b00171feb1821a3c83bb544a0b2c976eed1d7282d82e4c5d93611",
         intel: "70cd3a0569cd9ecc84508f73768b3af123adf6dc3b91b796d16bbab506ba3ffc"

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
