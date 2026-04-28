class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-bcbf045"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "80a15b4b5cea8c2e61dd4d3b19a4a86c5653911b60cd56dcaaa4bb567e0382a7"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "a823577b78579dda7bbb7290f4059f2dadd9c4370aaf6d609aeeb1ee246c3b4c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "5c3fa171169fe7f015e42d97128da6f3393fd414253fd158ec26c531a8e57fe9"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "fb0bec8569c30834ca009e3c0cdff07bc3d1f656661265afe8a81007ed0fa47b"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
