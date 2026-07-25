cask "maceverything" do
  version "0.0.0"

  on_arm do
    sha256 "PLACEHOLDER"
    url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-arm64.dmg"
  end

  on_intel do
    sha256 "PLACEHOLDER"
    url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-x86_64.dmg"
  end

  name "MacEverything"
  desc "Fast filename and content search for macOS"
  homepage "https://github.com/ying-zhang/MacEverything"

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
