cask "maceverything" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.50"
  sha256 arm:   "bd7f17bbe1be4949ff723ce4d61059cccce7ef15f86f31a9b4519cd20ccf1a78",
         intel: "ace40d119dccfed4785639ebb9074df50fdcc7a83eea7f838fe901f91162d5f8"

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
