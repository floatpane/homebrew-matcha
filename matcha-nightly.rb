class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-e9adba8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "b881ead344fb310bf3652552f1f4109c00c39ed7717dbb50ec7fca95fd45ffb0"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "5d1561bd2c46521c70704f17a4aa4dcdc9e46a5342fb7c4cbbf07df37eca3ecb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "1d153eab2242fb19986c993984ca57a8aaf4cb3145e273fff59783a5b0b3124d"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "4b28d720671a95bec4f1703832ce5af303804093147e93298b40711559539f6e"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
