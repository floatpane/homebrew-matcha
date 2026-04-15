class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-f19bbbe"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "7140d411759b8689b7e4eaefc5eae372a5e8e9c930438c6e9b6c9815bdaff52a"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "aa9f6c8cdf9e86b6ea5d269a3b37088a7dc38327fbae0dac11e0ec01fd3df921"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "4d469ee089eeeab6cad119c8a1d6d6e81cd3dda0dc04136ee1777713094cad47"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "7d1f6395f5d2b02d0fcdd65a500754b6bef8acb7fc50c6dab23b480cef3bcd0f"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
