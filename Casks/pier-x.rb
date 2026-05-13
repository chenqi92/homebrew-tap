cask "pier-x" do
  version "0.5.3"
  sha256 "fee62bef8415acbce518a735e7dc0d79b426289ab7ef16a72d6e85ad1aa50cf4"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.3/Pier-X_0.5.3_universal.dmg"
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
