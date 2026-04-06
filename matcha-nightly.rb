class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-9b78b2f"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "b628bb953db11d0148c8cda209567ec33674ef17611e3f165f41cbbbf931b437"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "4ada4dce6852d403c718f9ec212b67773a395c962fef408616765b7758b0a9b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "b1bcbf3a0d3ad32bac41dd779877bc3a62fe1f2153f8e3bf9c28370616a8b917"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "bd23510ac690a43f9131d1f1c502b697ae8db1efef21413046a8f8fd425537c7"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
