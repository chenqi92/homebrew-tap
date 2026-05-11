class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.1/Pier-X_0.5.1_amd64.AppImage"
  sha256 "15b340fcc7735bb8ad6adc26a4ef87c6a21dc344907f0d85d5bca1b76f60caab"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.5.1_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
