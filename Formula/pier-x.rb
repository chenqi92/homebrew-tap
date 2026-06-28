class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.3/Pier-X_0.6.3_amd64.AppImage"
  sha256 "a8475854133095c7fae7417c3d15eefa005dfd651a7b2524dd22c101abf0a138"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.6.3_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
