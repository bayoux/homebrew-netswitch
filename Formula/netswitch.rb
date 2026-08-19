class Netswitch < Formula
  desc "Toggle between internal and external network on macOS (USB-LAN + squid)"
  homepage "https://github.com/bayoux/homebrew-netswitch"
  url "https://github.com/bayoux/homebrew-netswitch/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e6e2b89e807638688230399cbf7e20a81ee868e35200b3420bb611efae159c3c"
  license "MIT"
  version "0.1.1"

  def install
    bin.install "netswitch"
  end

  test do
    assert_match "netswitch", shell_output("#{bin}/netswitch --help")
  end
end
