class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-f6f120b"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "dcad97440df318e79128810d17ecc67c3f656083a179688dbcef00405c80cb28"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "0b838a453bb1db3235ca573655560af57f3023b6ff15690f83d730bbc2a003fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "3d4e229614c236c72cfc8e4437a6f9be32a36527ceb41d967f2509ef60b8acde"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "704da19d53efbdc9a0c469f2b3ff72be43f99bce4ea86d45806bb3361c3aa7bf"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
