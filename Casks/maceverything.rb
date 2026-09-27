cask "maceverything" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.27"
  sha256 arm:   "b0d525407c25aa375b76852a4db19d608e00dd784410ed6d775aaff9cf0059c6",
         intel: "52b571b44ce6b2821f925f261120e3c5badd4f60b1f0606b34fa653e6547b01a"

  url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-#{arch}.dmg"
  name "MacEverything"
  desc "Fast filename and content search"
  homepage "https://github.com/ying-zhang/MacEverything"

  depends_on macos: :sequoia

  app "MacEverything.app"

  caveats <<~EOS
    MacEverything is currently distributed without Apple notarization.
    If macOS blocks the first launch, try opening the app once, then go to:
      System Settings > Privacy & Security > Open Anyway

    MacEverything 目前尚未经过 Apple 公证。如果首次启动被 macOS 阻止，
    请先尝试打开一次应用，再前往：
      系统设置 > 隐私与安全性 > 仍要打开
  EOS
end
