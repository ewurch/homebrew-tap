class Brag < Formula
  desc "Job application tracker and AI-powered resume generator"
  homepage "https://github.com/ewurch/brag"
  url "https://github.com/ewurch/brag/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/ewurch/brag.git", branch: "main"
  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/brag"
  end
  test do
    assert_match "Brag - Job application tracker", shell_output("#{bin}/brag help")
  end
end
