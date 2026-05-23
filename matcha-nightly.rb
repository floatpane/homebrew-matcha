class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-dd5b1a1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "714abf3a4e1bd3ef3367496c49b08e24d78d72208fa0c3aa5ca80a611c1fb9c5"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "080e46696b5d176f9b9d5eac22996f8dc66ef731c953ac94e33ce132e134cf0a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "08f5b5f5fbf05e58d1ee06af018c4a3bcd69ad168196a52a35ab62924d75cc0c"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "fed7dd56a66543b53bfb6b3fd4e0c7b97608781aab6ee8ac86159ef496bedd06"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
