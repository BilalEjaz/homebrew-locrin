class Locrin < Formula
  desc "Deterministic quality gate for code written by people and agents"
  homepage "https://locrin.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.0/locrin-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7c13d153f422d2bda2cedf5375489d89bf4b6a7b633c089c8746f4a42ca6250"
    end
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.0/locrin-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a5516cd1a87528d09dbd1f6a3b1cc61f7e4eadeea1f3c227f9330ca3314f733"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.6.0/locrin-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2c11dec101d8a9186fe83e059d3326c0b181a8ea1867d9298218f63165a0f89"
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
