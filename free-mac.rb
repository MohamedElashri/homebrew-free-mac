class FreeMac < Formula
  desc "A free-like tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on :macos

  def install
    system "make", "release"
    bin.install "free"
  end

  test do
    assert_match "total", shell_output("#{bin}/free", 2)
  end
end
