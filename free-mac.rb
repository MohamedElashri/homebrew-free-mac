class FreeMac < Formula
  desc "A free-like tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.4.tar.gz"
  sha256 "5f4b68197988d6953d387db57a179dde215cf551076a8bc8c9a727a342bf815e"
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
