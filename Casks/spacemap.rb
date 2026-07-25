cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.15"
  sha256 arm:   "5157c157fba3aa0be7ced6cb7d9779f30276af4d68e6cacda19ce061dd663194",
         intel: "ce68e1ab6dec1f40cb4ce981818e5daa34825ec71b8a75841c09087fa9cf5a38"

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
