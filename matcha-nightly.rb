class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-3504ed4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "7925e12928faa89fbd6393d7bf4a110038846291e83ddaca60f816e0e7a7df8a"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "d03b671443a50faf9042cee76534c2fe253538416bfdcb34b449ae01a9175fd9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "ba9cd4d6e3a0ba23e5e4d8facc1c1efffc06801dc999ec3566dd0d202a5f2e39"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "2baf49f86918b7fdbfa6bd9423acde16a4cff6d55dbe6e5f3012bfff8e5bebc2"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
