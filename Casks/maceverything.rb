cask "maceverything" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.30"
  sha256 arm:   "e39fd6c3cd0345504e53e0f028cd978a2313c13ed3b98dc309c446e634edb498",
         intel: "9011e1e71f7ca5cee1f12ffcd1f8d7debcdbda710f7fc00e836677643b6327b5"

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
