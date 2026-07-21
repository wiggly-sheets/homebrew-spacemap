cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "ddc98d0b98c9813ebc75e79077ddccb5da406a17aebd70f0ae332e7a9ddc3ade",
         intel: "a774698371bea9f23565a623b44264780169c53c0b721a5f0edf608b47c8e30d"

  url "https://github.com/wiggly-sheets/spacemap/releases/download/v#{version}/spacemap-#{version}-#{arch}.dmg"
  name "spacemap"
  desc "Yabai workspace visualizer"
  homepage "https://github.com/wiggly-sheets/spacemap"

  depends_on macos: :ventura

  app "spacemap-#{arch}.app"

  zap trash: [
    "~/Library/Preferences/com.spacemap.plist",
    "~/.config/spacemap",
  ]
end
