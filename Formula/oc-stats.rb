class OcStats < Formula
  desc "Terminal dashboard for OpenCode usage statistics"
  homepage "https://github.com/Raghav2012Code/opencode-stats"
  url "https://github.com/Raghav2012Code/opencode-stats/releases/download/v1.8.5/oc-stats-v1.8.5-macos-universal.tar.gz"
  sha256 "be190cd38378c391304de9c46028dbe296a07d0d90423179a292a7a251ad0509"
  license "MIT"
  version "1.8.5"

  def install
    bin.install "oc-stats"
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oc-stats --version")
  end
end
