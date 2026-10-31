class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-4a7b9c2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "a336b717b3f10f98ae355c77d37d3e3a3d336e114ceda2540e22467ed5f39d41"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "ee44e5c51305f60b59bb8597ae2bdde9fd97dc07cf373c2fb3f81ba262a521e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "789e0c199a5e122d3e55b1dac21c364ad85b67dacaebb4c823aa09f41352dbb9"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "a28d3819fd4ff369cc741ea10a5e5f7c3ac8cd046cde649e192e048d2760afb5"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
