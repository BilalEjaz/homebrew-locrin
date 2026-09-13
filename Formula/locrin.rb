class Locrin < Formula
  desc "Deterministic quality gate for code written by people and agents"
  homepage "https://locrin.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.5.0/locrin-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "be2114e6581e4e3b1db1c68222c5af44750f84ac570f90bed57696f4fcc21d34"
    end
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.5.0/locrin-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d59731255cc45f692d320aea98aa4eab78174c740eb30f97797c2cea1eae913"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BilalEjaz/locrin/releases/download/v0.5.0/locrin-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78c673f7a9271e1cdb9855c79f59e50137e31ab4352527987c3c339c2fce3d07"
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
