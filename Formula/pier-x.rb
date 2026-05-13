class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.3/Pier-X_0.5.3_amd64.AppImage"
  sha256 "8d5efaa768b7b80c1ff266752587b25110c080410ae250e669be0e7d763eb0da"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.5.3_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
