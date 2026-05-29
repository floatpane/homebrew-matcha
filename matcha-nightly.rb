class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-18062bf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "c21e3625628945adbb0e1a5873fb9dad59d88a8d29d3e22ad635685ee7fac85a"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "64dcd04d86e0e7384bfdd4d9ccc623274b40eff0e0f0314488af0d84f1491226"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "0ddfbd5d32de6a1247a2acd123c1c6fefd73e9216b7b7b8f4e9229a4866e4c9b"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "55d808b4b44fc8812f204fafe5f3e3bbedaa18610bc6433421d2c41aac4d25d7"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
