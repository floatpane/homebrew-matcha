class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-d4fd1fa"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "bd34b1f5b626aefd7bf52b8e55b8cb3916c5a9d618a3244468bfc6b1fa6ee744"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "9dec5cd29e0e8afc00aaf80febd32fb787bc3f9e01e327f96b7a450d250f7665"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "932c2bfbbb62610e5e975758e82362a1af6de3e54f72e3eb096a3db8037ff6e2"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "9031fd0ef11fd6557b9114ba0180c65709c91907873cf50dec0f4a07a7e438fd"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
