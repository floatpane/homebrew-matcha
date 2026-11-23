class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-e131571"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "cc65fbcad472d73b84b988cf880ff27c3984d5afcd82852ef68915bce525e69d"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "d313eca0c7555072015a54dcf1f10aa6e68f11bea36aa572ba28a71e021ddcaa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "83f11d7b907a84c884ba40153bca8ef848ea4a10c7cf8de8f1cc5ed4ad937278"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "3aac6ef3e5c48252f62923c97e8f59ab985ebccfb1ebc997f6ef12cf28ef8e1a"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
