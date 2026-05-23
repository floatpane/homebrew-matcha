class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-c1c61cd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "33e4551741cc7e9c940d12597e02a2cbc9792c4a8f3b8b70c8d060b2b9d9b0a7"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "0a62d3a99aaf2ef92d7f5073c823d80908b71fdc967a69c47fb2b927b0d8651b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "c465808cfad395c447ac9fbbbee2427adc7f338fe262ecb34b829b3667b26bf8"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "a1eb49d017f22044a0b86eed7d85bf5c5047abcec2e097d6562cce89a10d57fa"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
