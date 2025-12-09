class FreeMac < Formula
  desc "A free-like tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.4.tar.gz"
  sha256 "1a2f63cc935c85810cd5ba9241152f5afd164568291cdb99fb846f0bd51bc138"
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
