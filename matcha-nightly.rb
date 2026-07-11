class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-7dd0fc5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "0b93b792efecca35c9960c09f7f27afbcb5f72d77695799b6f3ddbfbf0710297"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "1afe3f79954b3da07aa16f40b9c566abb7c301d2b8f7f4a960302861f89f6521"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "97e1f20a1d1fd029bcf1a02301468b570d7f8cfd7a6f5848032bca6daff6f7eb"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "5913fb91863bf3129ef447acc1ec2273ad1496b231ff0c48cc8f60d7a870c280"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
