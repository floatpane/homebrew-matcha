class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-820afde"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "66e0ac3cb5ae681d161b18227fef2d6f78e0d99bbefda6f7788e8ae7867fd050"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "1a87008cbef882fb9d32c757a12ac250adce79878dd355e3ee7768078ca82443"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "1a7727d24342f42d7a7fb6896ffd2e1c897b760592f5ad04930fdf7e3a395b62"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "8d56a1cbd44b80c3fc64793dbc79fcbacd065a6920d1d0e47cc559332fa7b8cb"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
