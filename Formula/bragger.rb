class Bragger < Formula
  desc "Job application tracker and AI-powered resume generator"
  homepage "https://github.com/ewurch/bragger"
  url "https://github.com/ewurch/bragger/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8e995e6bb3ed74cf77a43fa6b7745eea095df511018f18a1a82fff080b1534f1"
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
