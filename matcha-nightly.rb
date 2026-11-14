class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-e7d6550"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "02e0f99f5b40e4fa4ac92a5d4dedab77ec8f14bbe7c9cf901189011440bbd85a"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "bc3641f03f88e1cdd386bdce7b8bff0a377c01c385e1093a888269ace5f496bb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "29d738df6a18a523ff345a5ad81e8cefd7ecfa8774dfa72e4c1fb5e6a70f9f58"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "d3be35a8f6d4bdaf5ede372b27801406a2262036b7e3600318c39461a3c2538c"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
