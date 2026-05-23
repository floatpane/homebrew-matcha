class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-3223ceb"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "0392103733f910f6965cb5a8f1e3ab4b02dd410c62dbc7cd5e3827e6fda3709a"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "f1cf426fd2b90a54880996f20c35aff6ab162fe715897acb2d8da38d397ea4a1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "f731d5e7b70ad37c62a4e19ed1a25a756fdc3962e1052ebc7ede737a519560c5"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "ac13c8e016167ab1a28abbe22e818e86bd6e006655fe7472e0b8ae2944a08f8e"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
