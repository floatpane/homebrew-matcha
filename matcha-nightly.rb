class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-2cfbf15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "aa8aa882777a3f4fa55bec6ff9b60f24b3ba602bd60f8bad3acab3dbbe8b5808"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "62deaf549d0927ceb80a0c0a71700e036d35cb4e8b8623a281c9ad8fdbfb530e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "60cf83b59c4f9548725959d3de99ad8766c18b23f4ef0f1e53b61ce314ab68f5"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "482350ec2f88f0c5c549eabb0ad29ef51a21b139da7f5bb3ab967c4056d28815"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
