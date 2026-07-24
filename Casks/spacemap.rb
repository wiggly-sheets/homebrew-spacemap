cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.7"
  sha256 arm:   "85465ac56b5cc05220128039f10af04e7cab095a3b3f1217e9e9bd05d188795e",
         intel: "a15e49bc54aa866602a32f544429eb78eafb447c428f93e41a7aa2bac22d3f6e"

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
