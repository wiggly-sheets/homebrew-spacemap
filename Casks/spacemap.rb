cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "78c3644217b7fa61b92bea9a6b39cbace691ddf42319667da043ff9f9e00e57d",
         intel: "4e35ffad7acad3d77575f66cdb9132173b226f503b88cee30ba1aaaac045ac3d"

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
