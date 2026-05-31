class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-06cdbd9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "dcb836f30fccbf70fe2fa1d828e2f76cfb340ba8156da4edcfdd153d184a7577"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "dd8bd3fe2b4ae8cd151f6ae75b8bfd0233ad9b9cd8da71a5ed80aa5d2ee55a0b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "32eedad1f5dbbf38d23d6e2f27c7555e207fe9e1f3efc2db9e93e77275e94fe4"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "6e92e3615cb389c6a92706acc108fd0b92e057f51f6f850a8b4266c2fc7e6c1d"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
