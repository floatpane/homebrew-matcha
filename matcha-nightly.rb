class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-d85bf4d"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "5ca5fee2aba50aead989e34131da96cc4d5777f3ec1e66b1b8c07dfd8e40a99f"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "55d95c4fa0c67df55c69063cf0c3729de7f0e4ab3130d4c8889e283a6e374b5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "ad742e79955c5fe07a8f86e18d4fa9d41052b93e7abe42b8817d92043a153f8c"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "2d3c37a306d02505fa3fc392176648a6f9a3894ea61b621bf1af5004c9f3c2c9"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
