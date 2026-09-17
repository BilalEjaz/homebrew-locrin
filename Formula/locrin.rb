class Locrin < Formula
  desc "Deterministic quality gate for code written by people and agents"
  homepage "https://locrin.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.1/locrin-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "8ebfee5f7c022c7499090f6e7eafee2b28380bcb99c1aa0e1a3f17022c201794"
    end
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.1/locrin-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "61174b4f2d72fe51e51308a60e1b12be6aa914e5de2a23796dfcc8ae7ad367ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.1/locrin-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc291c600365971970d5b7ab648b5a47d88d4e79714da3ae1c0229ab0d4880c6"
    end
  end

  def install
    # The tarball holds one directory with the binary inside; find it either way.
    bin.install Dir["**/locrin"].first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/locrin --version")
  end
end
