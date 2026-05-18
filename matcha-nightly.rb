class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-f38f3eb"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "01bb0d2e40da9c1dbe881d4e0c2abe55d46b97833e6e81153bb7ca2bfc9b902f"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "e4eb85406d316aec3cb5ccb9548f2c0f0eb2c7901ae3c5d5c5a8273f0d30adf1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "32700162d025c7e8f1f9b6b51ed98b26a20605e7f5c5588eb148f037b2c14679"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "77d958085617ac3b5ac80516a1ad203a1abed16ef373fed7948b239df100aa78"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
