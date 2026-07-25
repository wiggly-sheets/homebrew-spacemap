cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "ead25b290f16a7566f46e195d34368dbac0dd313f6d286d2691a8883bfc2b732",
         intel: "6b246a69ce85704be7e05838e9abb012715be1faa2923f7ff54b6fdaa3e0b589"

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
