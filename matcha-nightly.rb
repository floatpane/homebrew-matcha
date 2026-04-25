class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-3e32431"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "56ee2b4312aa2c4b527bb5b1a0fe2b0380c6109024a5d18fede33a7cc9ffc6ca"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "53208d48d52581f4b483a3c95d5d4d7a6933447e45b6c262a9f092812c86959a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "de5d7032240763c5d03221e42dfc2ef83a1a8c1e8d92f76f297df91e7c71b44f"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "6ddcb2a60a4ecdfa5709bd7d353f69c0b3e83fe5dbbb68c3b9b4d8eaf3e39944"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
