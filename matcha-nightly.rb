class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.floatpane.com"
  version "nightly-1e32353"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "c5c3be5ca98eb65c745842ce6b96a85b4a279cd6af188320e4eaa9aead0e6fa8"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "916169d1b4df6404cb9d0ee0d6729c5d80d2b651f088b1f0f56d681b038dbbf4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "92b6adb797d75a39b55f726aa9bb9a7c8dfcc4ad2fc597986e4b9e0e584ca287"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "d54f5eee6df0ffb8b9444f4dbe8ae8f765cb6776539ea99851335c604248868f"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
