class MatchaNightly < Formula
  desc "A beautiful and functional email client for your terminal (nightly)"
  homepage "https://matcha.email"
  version "nightly-daab110"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_amd64.tar.gz"
      sha256 "b23b6134f539f1fd994278919a1e0118d3bc5f6caaf5734b222f09d30ebc59fc"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_darwin_arm64.tar.gz"
      sha256 "88ce76fda32c81a875c1285efaf3a942d1c632f3ea616245689e87bb7c4a93a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_amd64.tar.gz"
      sha256 "6da4d7f599961fba1765d693d275bd48b7ef36e1297b28d1d132d85b151b449f"
    else
      url "https://github.com/floatpane/matcha/releases/download/nightlyv0/matcha_nightly_linux_arm64.tar.gz"
      sha256 "383a8ebb5534e0eacbfc9e63a886e2884b35c9bac37992043c68883c40a5aa9c"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    system "#{bin}/matcha", "--version"
  end
end
