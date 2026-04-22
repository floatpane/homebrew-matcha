class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-ce43417"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "ff6c6b16ee0f08cbe1889d62caa7f23fdfdc7916fd172aad1d77c4ab5f76a1d6"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "cf77e1ade426ed1ce16f57ee3b0f6c44c13904be2ea8b4197d53ff0a042e5bb9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "537cfec6d0ef30c1bb51b74ab5039c5312436735a807aa37bba2c55ae4382878"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "3ff0fd7ec1d702fe3098ce111e2674fe23a9711fddd44bcb3aa9a4e05610b83c"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
