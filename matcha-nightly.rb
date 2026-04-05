class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-cf6d0d2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "3cbfca922a8b5ef355daf1b42da9e19471b37e2d816d0fe04cbdcb2506005d20"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "3724eea6bc787033011149442b6b14f86c351a28d627424aa59d7efd949c712d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "c89e540001beadb3a770cb37e5dd06b14efd4f046cb75d6e81704f3a5d8928bc"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "0116343fc8c0230b39152144f65068a7eeb5acb11bec99015f07d3ef81e47e97"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
