class Locrin < Formula
  desc "Deterministic quality gate for code written by people and agents"
  homepage "https://locrin.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BilalEjaz/locrin/releases/download/v1.0.0/locrin-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "481e3221522ab13e9c339929c85e8efc32b8217a0f730c56fcecfb4de374b044"
    end
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v1.0.0/locrin-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee87f0aae88838b58d3e0205cf1af52fdd5bbe1bd3d29939d8a9406885766ee9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v1.0.0/locrin-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d54450e0f3d041a827893490b3444c7e51be74faf4f6d8907cda7cf94508449"
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
