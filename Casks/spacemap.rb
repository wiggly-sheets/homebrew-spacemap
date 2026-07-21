cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.5"
  sha256 arm:   "804b86ae9ccd4a670ba8a98c3dd2103a9b5ec2e23b04c6c0b244a682bf62982b",
         intel: "3262c73f4c8e01bd692d9a7233c7b4ae246e209e0a76bdc057e284cb43c49c16"

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
