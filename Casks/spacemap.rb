cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.17"
  sha256 arm:   "51b8f730833411c455d642840a73caad1fbdc20d0170a67400a1bfdb2cb063bf",
         intel: "33b93987c4cc08d861dc7a4f4e9b04751d1ee491a9ae5b90ad8e263d32912710"

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
