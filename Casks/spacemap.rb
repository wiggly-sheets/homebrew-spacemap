cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.9"
  sha256 arm:   "cfc479a3ef7417b37b74ef52a03603977741eb7ac8ddff4788ae200ebb7dde70",
         intel: "8fb9571339986720b217cb6f844bdd8d390122d83018acbfb63904b34dfc8b2c"

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
