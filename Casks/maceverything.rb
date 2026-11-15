cask "maceverything" do
  arch arm: "arm64", intel: "x86_64"

  version "1.11.15"
  sha256 arm:   "2d8dfc0d01bba2070ba5e654bd94c8475b7c169bacb93d848c0393f2f18f7dfb",
         intel: "7e59a39b3091471cab2afbbd20b70a554d5a3dd611ed7049e6f6b32560178819"

  url "https://github.com/ying-zhang/MacEverything/releases/download/v#{version}/MacEverything-#{arch}.dmg",
      verified: "github.com/ying-zhang/MacEverything/"
  name "MacEverything"
  desc "Fast local filename, path, and content search"
  homepage "https://ying-zhang.cn/MacEverything/"

  depends_on macos: ">= :sequoia"

  app "MacEverything.app"
  binary "#{appdir}/MacEverything.app/Contents/MacOS/mace"

  caveats <<~EOS
    MacEverything uses an ad-hoc signature and is not Apple-notarized.
    If macOS blocks the first launch, try opening it once, then choose
    Open Anyway in System Settings > Privacy & Security.
  EOS
end
