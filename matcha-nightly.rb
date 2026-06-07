class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-5c8bfb7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "7e31ca6372ad5646a9fdf30c7cb9cd83723c741fe5a588c063ed9e03ed95fdd4"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "5c36a2da4980a3987038c631fa75a727994b2400b644a6c99e62f6aa8a00111d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "db5f6c126cfd10d21e96beb92d777c5a3cc5cb8e2eb5f4cffe73a2d5e8bf1d84"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "b78446b23ac21631077ec31f6ec4b20439b6afacf9a929c8d2f5e4c78ab4abe7"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
