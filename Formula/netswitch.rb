class Netswitch < Formula
  desc "Toggle between internal and external network on macOS (USB-LAN + squid)"
  homepage "https://github.com/bayoux/homebrew-netswitch"
  url "https://github.com/bayoux/homebrew-netswitch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e1563f51f11b5f531fa334023ebe4eb2205db9b7f103aec3e12529e0f3008b13"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "netswitch"
  end

  test do
    assert_match "netswitch", shell_output("#{bin}/netswitch --help")
  end
end
