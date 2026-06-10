cask "pier-x" do
  version "0.6.0"
  sha256 "fb91dece1dc67061c1ce2a8051f9d45d34a026a0ff7348388f147560bacfd526"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.0/Pier-X_0.6.0_universal.dmg"
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
