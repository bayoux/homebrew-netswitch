class Netswitch < Formula
  desc "Toggle between internal and external network on macOS (USB-LAN + squid)"
  homepage "https://github.com/bayoux/netswitch"
  url "https://github.com/bayoux/netswitch/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 подставьте после создания релиза:
  #   curl -sL <url выше> | shasum -a 256
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "netswitch"
  end

  test do
    assert_match "netswitch", shell_output("#{bin}/netswitch --help")
  end
end
