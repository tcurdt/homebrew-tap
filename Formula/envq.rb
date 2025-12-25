class Envq < Formula
  desc "A jq/yq-like tool for .env files"
  homepage "https://github.com/tcurdt/envq"
  url "https://github.com/tcurdt/envq/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "" # This will be auto-updated by the GitHub action
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "envq", shell_output("#{bin}/envq --help")

    (testpath/"test.env").write("KEY=value\n")
    assert_equal "value", shell_output("#{bin}/envq get KEY test.env").strip
  end
end
