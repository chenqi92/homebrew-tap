cask "pier-x" do
  version "0.6.3"
  sha256 "db60c85838a01e348c6258d343be4514dad935983f519fb1bb33784bdc7e862e"

  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.3/Pier-X_0.6.3_universal.dmg"
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
