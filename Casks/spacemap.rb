cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.18"
  sha256 arm:   "94a72fe6bd32728dec6b8190ce2562d0da7c59d015c3fc62a1fec7a35c2a8980",
         intel: "4d9cfff7236e4113c8249cedcbb3ad670a7040469b38eb1ad6f5e2714cd801e6"

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
