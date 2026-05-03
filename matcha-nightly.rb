class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-464f82a"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "13c5ea469b01d9d6e36c4e6cd4de868da9a532193a4ce8a0a9730d0d20e317ad"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "59935f87ddfa09f31ae822b14b8c28da2a4dc18d4db0e9262f6c60510ce5d121"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "2272ba6c4b2b9cff71bfe4b547535d6d78caf5878ebe8163bbfe6bf1d64afc16"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "b085a9e776b0e5f16c6a79bb8eaa61090f9dd1c8b7f271ed5641d6fde69991c6"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
