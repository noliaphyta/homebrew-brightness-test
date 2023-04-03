# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brightness < Formula
  desc "Command-line display brightness control for macOS."
  homepage "https://github.com/nriley/brightness"
  url "https://github.com/noliaphyta/brightness/archive/refs/tags/0.0.1.tar.gz"
  sha256 "2028f4e174b8f01eeec3b47799208650b6534c949e1222bf93c42379523640b9"
  license "BSD-2"

  # depends_on "cmake" => :build
  depends_on :macos

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/brightness", "-l"
    
      end
end
