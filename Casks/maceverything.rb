cask "maceverything" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.20"
  sha256 arm:   "0252a210abeba01ff1f424ad9777742cf678d64d787fbc0f3151d0646ccea987",
         intel: "6dc51796c9fd5ebced90741464f71766e79bad98e830e06c8e6fa4ea047255a7"

  url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-#{arch}.dmg"
  name "MacEverything"
  desc "Fast filename and content search"
  homepage "https://github.com/ying-zhang/MacEverything"

  depends_on macos: :sequoia

  app "MacEverything.app"

  caveats <<~EOS
    MacEverything is distributed with an ad-hoc signature.
    If macOS blocks the first launch, try opening the app once, then go to:
      System Settings > Privacy & Security > Open Anyway

    MacEverything 使用 ad-hoc 签名。如果首次启动被 macOS 阻止，
    请先尝试打开一次应用，再前往：
      系统设置 > 隐私与安全性 > 仍要打开
  EOS
end
