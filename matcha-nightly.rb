class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-99daae3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "75a8b21d7650f53d716fa618fcd5ce34a5bc4e89e4f8512f8345ccb1773fb460"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "88a86913dcfafe926b249fa5aeef9712bdd4040fd1586a2baddb4d0db6aa87c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "b0b82f99d2978135b57cd2f3ceb3a5bd7887b138d7b461f3e5bfb4cb6af7c92f"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "7af785b53fbeb0bdfdbad815141438ba9a36ed93effe3a0454bfdf18da817403"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
