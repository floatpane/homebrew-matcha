class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-706be37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "4d116dbd155dd7425c02288a378991aa92741fbe1b223bc5e9501d194770bedd"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "7c63f8923a09cfc4b8808c0b84f4316be102e36a525aa6b52dc114a11ab45b9c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "2b4d3dbfc3fbd62ed83d44d769b009c7041f69f91088bbd0b40d1ff3f596c340"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "4189ab09abc6b1945ccdf91174ce9d6fbdd6f064d57e0b6fd4e86b8bd65fcf5c"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
