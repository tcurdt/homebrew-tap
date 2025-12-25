class Kubesops < Formula
  desc "Manage Kubernetes secrets as encrypted dotenv files"
  homepage "https://github.com/tcurdt/kubesops"
  url "https://github.com/tcurdt/kubesops/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "" # This will be auto-updated by the GitHub action
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"kubesops"
  end

  test do
    assert_match "kubesops", shell_output("#{bin}/kubesops --help")
  end
end
