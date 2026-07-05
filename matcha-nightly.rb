class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-a13b8b4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "8d1a3a0f8a0bc18ed057881feeb1721d9616781e94e5dbf81a709d4f18663d72"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "50fab6e0b593bf6b595b191c56f8afd44b51396d99bbfa60879ddbff2bccf22f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "6fbe1caa524658b7ae0c5f3f1dcfd6fc9b0a5d198d649b37b890899c8ce30076"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "73656112eff7d6c20fe37771b6ff75a4ec9569b9403c13bcf7c8e222dd5c6896"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
