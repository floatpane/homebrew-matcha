class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-db06d38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "eaf4d95526ea655b5aa8d58d7de959d927b04c6f6a0e47c397dbdaa5db89398e"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "c4762ddeb817ed6f70598b48ef1fc34c3fed2617cec4c5f20677df447ee8cf21"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "f5d679e7cb9d084c08ef9618f79929fc8affd7c0b16b30723c0e08769f2b8260"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "f4dcbf593313128335f3d0eacf2f6775778e9790b31f41bda5b90910dd415b2b"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
