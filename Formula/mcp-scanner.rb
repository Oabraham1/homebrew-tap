class McpScanner < Formula
  desc "Security scanner and proxy for MCP (Model Context Protocol) servers"
  homepage "https://github.com/oabraham1/mcp-scanner"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/oabraham1/mcp-scanner/releases/download/v#{version}/mcp-scanner-aarch64-apple-darwin.tar.gz"
      sha256 "41f43786bb755d4ceb46d5ffe9cccfa90944e20e7a0fccd380512fe63721a1ab"
    end
  end

  def install
    bin.install "mcp-scanner"
  end

  test do
    system "#{bin}/mcp-scanner", "--version"
  end
end
