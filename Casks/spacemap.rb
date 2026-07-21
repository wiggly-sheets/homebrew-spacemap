cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.6"
  sha256 arm:   "ab722f4bfd23297bb9a6948dfda3edace1c3dc29ddbe67ef3a4e8d28f0fb2e91",
         intel: "723beed65bc24e254191d299fc3aea3e6745a2d9c4687d19f9512884141cfd29"

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
