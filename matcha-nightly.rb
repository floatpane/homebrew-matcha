class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-30aa9eb"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "08a6eb4ce4ec9bc1e581df87ebdb4e4413f064fd2e7b6a444dfcbe8ce9c532dd"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "73b3c1f4f3b162e24bb79f6bd9ae81fb8a0d7821babec16cdc13548eaacc26d5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "b59423a130d4383492bddb6146c1d83eb361b6337fb0751511d24a58658cabdb"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "2afb561ac997cdef3e0cf5eb927a85b5ceeff2679ad903e6d56abeb6e7807282"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
