cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "ad72bc9d1e6d4eb45fcd7c8920626a82e1117a68fdad470f8725208adb0620bf",
         intel: "83d0f9e14335ac458f2a71fef1672e1b5366459da9eb0e7552e04bd84f19513b"

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
