class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.0/Pier-X_0.6.0_amd64.AppImage"
  sha256 "99d27876176fb9bcc9f60edb7f632f226575a26d0f30059aa9a4ccc4c1d3e438"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.6.0_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
