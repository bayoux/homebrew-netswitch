class Netswitch < Formula
  desc "Toggle between internal and external network on macOS (USB-LAN + squid)"
  homepage "https://github.com/bayoux/homebrew-netswitch"
  url "https://github.com/bayoux/homebrew-netswitch/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "f3d1ef96ca7d28dc86a703316b5077691602cc0dfe2f39155a9aff84397e63fb"
  license "MIT"
  version "0.1.3"

  def install
    bin.install "netswitch"
  end

  test do
    assert_match "netswitch", shell_output("#{bin}/netswitch --help")
  end
end
