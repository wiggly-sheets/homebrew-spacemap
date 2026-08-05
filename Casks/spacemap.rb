cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.33"
  sha256 arm:   "a76bf9a0c40eaa8562968c5d716a0f3bf3ca279d8a7ce0e89d66637832e10683",
         intel: "d269d68c11c595d2c78a70a98f456093edee44849ac17403d96ba59f05f2ef7f"

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
