cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.8"
  sha256 arm:   "d237a159e07c8a7d44948ed615ce4f3f12c82f1fc0d6dfe4214f1acf2adc73c5",
         intel: "4ba53e71c5f6168d1daa25ea95b1d06e02591f7c8a2ba331977d513f3dcad900"

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
