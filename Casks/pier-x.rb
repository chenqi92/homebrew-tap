cask "pier-x" do
  version "0.5.1"
  sha256 "0922b62620d5da70468b69f3a7e11ab7b2076968325625b61951b20862f4ea72"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.1/Pier-X_0.5.1_universal.dmg"
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
