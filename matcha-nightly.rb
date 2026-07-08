class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-d447fff"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "8af92b06cbc6cada62c1663e4bb5512a0fe8bb5ad3fd2a11b8968c9223735701"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "6f550dcae619feb0832256dc5ae2b233dafa47b00905896605ab630ad4a6cae5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "99a630c984d3010b37eaef3b49ea118dfea049799a89addb963e534834f27b97"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "fd66a85441730c210be6c9a6e342574f86769ed2171a107f3cdd44292b4f3656"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
