class Bragger < Formula
  desc "Job application tracker and AI-powered resume generator"
  homepage "https://github.com/ewurch/bragger"
  url "https://github.com/ewurch/bragger/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/ewurch/bragger.git", branch: "main"
  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/bragger"
  end
  test do
    assert_match "Bragger - Job application tracker", shell_output("#{bin}/bragger help")
  end
end
