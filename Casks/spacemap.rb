cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.28"
  sha256 arm:   "158a1d0e1d8e3e4bb464d72f8836531930fd2ae6f3301eff7821bb3234c6123c",
         intel: "5cf7a6f8cd28f7e5d92d89b997a504636ac469bdb48dd549439fb158201f82cd"

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
