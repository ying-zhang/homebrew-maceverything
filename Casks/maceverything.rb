cask "maceverything" do
  version "1.7.25"

  on_arm do
    sha256 "08347a5103dfe37b0712f00b741ccde532ec30c7326470be2211cbacd07b249b"
    url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-arm64.dmg"
  end

  on_intel do
    sha256 "5a99ea7a7e236db57fa3cf4924d0c916f76c4de1b482c8e188abf4a0aefbfcf4"
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
