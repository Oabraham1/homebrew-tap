class McpScanner < Formula
  desc "Security scanner and proxy for MCP (Model Context Protocol) servers"
  homepage "https://github.com/oabraham1/mcp-scanner"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/oabraham1/mcp-scanner/releases/download/v#{version}/mcp-scanner-aarch64-apple-darwin.tar.gz"
      sha256 "ffd9650af2855551070890868c4076f6cc49306b8b524b4656235a52f237a59a"
    end
  end

  def install
    bin.install "mcp-scanner"
  end

  test do
    system "#{bin}/mcp-scanner", "--version"
  end
end
