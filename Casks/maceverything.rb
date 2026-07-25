cask "maceverything" do
  version "1.7.25"

  on_arm do
    sha256 "1073214f2450152537f2f9b028d025e5dbaa21cc3e883327b8a948def6a845b5"
    url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-arm64.dmg"
  end

  on_intel do
    sha256 "f1d3a9c39ac13902b4a4db299c417d4dabac53c60d6d960db20b140ed1d2f805"
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
