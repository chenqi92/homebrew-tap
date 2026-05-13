class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.5.2/Pier-X_0.5.2_amd64.AppImage"
  sha256 "503471030451b9236ea7ee518d4d6a80f1396a82258b155442cce5801c1310aa"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.5.2_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
