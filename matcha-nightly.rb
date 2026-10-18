class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-24e676e"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "cf25241c58591ef11893e7a10ddd3d34b4392a4e92fa990a3f79c3ea25df564b"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "7e9b4c8cd0d2ab1179dafd29af2064b4f72d9d9810cdddf64ed72a5888777aea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "35967110b42341bfdc5ab4bda4d5b43e2cbd5f2d63898e220f531ad89d9888f9"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "f1761964432baf68b90dc201ad65e597e2d3d9859f2b0f9b1b6fb8cf88bccbb0"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
