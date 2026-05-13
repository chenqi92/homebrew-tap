cask "pier-x" do
  version "0.5.2"
  sha256 "1b959f153b84acde7ce142ce96620166ab68433126573bee8e2f7639ffbc4fd1"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.2/Pier-X_0.5.2_universal.dmg"
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
