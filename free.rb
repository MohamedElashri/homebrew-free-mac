class FreeMac < Formula
  desc "A free-like memory monitor tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.1.tar.gz"
  sha256 "cd31775fa630fef139fa67da37fb68d9b67914e1101b10346d5d4df695917beb"

  def install
    system "make", "release"
    bin.install "free"
  end

  test do
    assert_match "total", shell_output("#{bin}/free", 2)
  end
end
