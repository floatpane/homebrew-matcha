class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-9ebfb1f"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "a211d063ff787c09679c50669c2063945c3b4ced7db65d857de02f317e751fb1"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "6798cced298cef54551c7d8fcc9498813fe6a3046a7a0f5b287458132fa7fc90"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "9c970aba5cb07dc4b7dfa3fc628589300b1411cf9bd661916699d9ef405f43e5"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "902a8d15b5022179a8a56ebf826766782fa4f37eba9b3817371654455065b2be"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
