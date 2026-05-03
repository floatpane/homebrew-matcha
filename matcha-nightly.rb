class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-309db4d"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "a8631aba1d7376f64e65bd9aa34f179e9bd891905aee2f0ba31200496b47d245"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "6f71f404752a8815754bae000c91d7bb6948eb978ebc98e6ec2a3ba373aa0c94"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "bcbe2dc0a718ad0b7b08d3d8f3f1ede9f2413bf8ee4bb13e4c48ebfb3e605dda"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "b62ff3c45af40d2a899e5baad0db4350b5f52937ba07c7abbf4c9d4b80967747"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
