cask "pier-x" do
  version "0.6.2"
  sha256 "16bb44c41a6089f1ece2fdd05f2af17bf6dfb8b0ca337a7f1490277c6e7edf07"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.2/Pier-X_0.6.2_universal.dmg"
  name "Pier-X"
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"

  livecheck do
    url "https://github.com/chenqi92/Pier-X/releases/latest"
    strategy :github_latest
  end

  app "Pier-X.app"

  zap trash: [
    "~/Library/Application Support/com.kkape.pierx",
    "~/Library/Preferences/com.kkape.pierx.plist",
    "~/Library/Saved Application State/com.kkape.pierx.savedState",
  ]
end
