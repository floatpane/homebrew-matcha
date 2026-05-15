class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-bcf6ecc"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "9ec1ee12d7ed0f1df33bf7b31401cb176def402610b1a96444a1547e0e096cfe"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "40d18ef658e094931eb3526566589645651cac19e61c54305aefd67e4865a8eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "15f17e442580a1d96dacf905d3d02de64a9de4975ecb3ad6fcfe11c6c9547fba"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "b81ba3226edb3b1d49b3dba6cbea63bdfcdfcfbcf4f7e682b6d5bdf8dac8d224"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
