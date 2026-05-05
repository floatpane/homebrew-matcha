class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-0af4499"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "7f1d8b0814098a3bf521ae7dfafdc3e935c4ffbf467bb07480b97aebdbd6be5b"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "ac2d77710d58ff29194e8a34bc1710801c1f74f8e478c9e65aa6cb88e6f1381e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "39d8a8040c4b99e9ae8a9221383a296954476eefb85535c7a9c8085eea2c8d8e"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "956e1fce3b63e98dfd3c20d31f155301de1e4a4656759fe11ef88d4564befc4b"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
