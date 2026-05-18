class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-82eb26d"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "2ac7cc2a364ec1d9669bf61e0092005467e471a5d70da83d59f8d5b008061494"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "0684b323f4e817a2ff36911f59a110f9fd3f709c1fb8a0d3c8de25d236df5d90"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "5a8f4a103196008b12e14aa6fe1cfd29b5d5afddbc3fdcc758e15d14ac2030ab"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "24807b7d0bd6a2726f87e4a4f0ecdb9c89db81be3cbef5cd3ee6dd7f286c9e69"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
