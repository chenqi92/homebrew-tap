class PierX < Formula
  desc "IDE-style desktop workbench for terminal, Git, SSH, databases, and remote ops"
  homepage "https://github.com/chenqi92/Pier-X"
  url "https://github.com/chenqi92/Pier-X/releases/download/v0.6.2/Pier-X_0.6.2_amd64.AppImage"
  sha256 "4a3a4a560a807b75f191b8fbdfe0fc4f25eda880e1f187d8228e5a054b22f646"
  license "MIT"

  depends_on :linux

  def install
    bin.install "Pier-X_0.6.2_amd64.AppImage" => "pier-x"
    chmod 0755, bin/"pier-x"
  end

  test do
    assert_predicate bin/"pier-x", :exist?
  end
end
