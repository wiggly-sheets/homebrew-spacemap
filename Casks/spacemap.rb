cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.9"
  sha256 arm:   "7eba784879d038d09db3ed5cbeb3627098eb16e0ba3d29121c32735f63cd51aa",
         intel: "ff82d61df0693f077a12360efdf3a388d931864cb88a45617860bf9ee03f4607"

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
