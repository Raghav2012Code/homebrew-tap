class OcStats < Formula
  desc "Terminal dashboard for OpenCode usage statistics"
  homepage "https://github.com/Raghav2012Code/opencode-stats"
  url "https://github.com/Raghav2012Code/opencode-stats/releases/download/v1.8.6/oc-stats-v1.8.6-macos-universal.tar.gz"
  sha256 "ac747f3c10af610630cb15f71553e221ed5bcd53a25f5493db8ade548ef18a78"
  license "MIT"
  version "1.8.6"

  def install
    bin.install "oc-stats"
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oc-stats --version")
  end
end
