class Netswitch < Formula
  desc "Toggle between internal and external network on macOS (USB-LAN + squid)"
  homepage "https://github.com/bayoux/homebrew-netswitch"
  url "https://github.com/bayoux/homebrew-netswitch/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "75932c4c7612cf17c2876c988b38b1c9ff9c290b08cedd08cafc4c50365e2d4b"
  license "MIT"
  version "0.1.2"

  def install
    bin.install "netswitch"
  end

  test do
    assert_match "netswitch", shell_output("#{bin}/netswitch --help")
  end
end
