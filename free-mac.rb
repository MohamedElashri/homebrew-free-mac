class FreeMac < Formula
  desc "A free-like tool for macOS"
  homepage "https://github.com/MohamedElashri/free-mac"
  url "https://github.com/MohamedElashri/free-mac/archive/refs/tags/v0.2.tar.gz"
  sha256 "56c99400e936197c7dc36464c29c88667aa33bd7149c6c32ea44b140b930e46a"
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
