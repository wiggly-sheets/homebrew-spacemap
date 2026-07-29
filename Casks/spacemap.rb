cask "spacemap" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.22"
  sha256 arm:   "ef788b856a3dd81b3886364f0037cc558a8948c201c3192e5e055f94b8e08907",
         intel: "a7c1b4c94ededfbf61d1c6d203ed1fef0f959da7635a93afac3f1495e62cd8be"

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
