class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-0a78f50"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "3a4b6d1215a40dccdd308f209fbdf0debb68373a367f9973e9aa6d5d359ebcb0"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "f19f2c76a8a3d761329f184544f91398f2e13fec4cef71eaaf10eba7887633d8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "8f863bff976e633914e8ae43030333ba0aa5db7d5438f2c17f6ffaedfd186730"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "cceb8fe4839ffa3f9b9cdc6fcbb5a5fd66c1ac3613484e26f28f51844bb8f698"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
