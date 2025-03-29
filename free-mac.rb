class FreeMac < Formula
  desc "A free-like tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.3.tar.gz"
  sha256 "76afc6c6807ae4fd06761c013809daa58b98c46a82002e086c34244ca5e714e4"
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
