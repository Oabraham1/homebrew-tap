class McpGuard < Formula
  desc "Security scanner and proxy for MCP (Model Context Protocol) servers"
  homepage "https://github.com/oabraham1/mcp-guard"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/oabraham1/mcp-guard/releases/download/v#{version}/mcp-guard-x86_64-apple-darwin.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"
    end
    on_arm do
      url "https://github.com/oabraham1/mcp-guard/releases/download/v#{version}/mcp-guard-aarch64-apple-darwin.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/oabraham1/mcp-guard/releases/download/v#{version}/mcp-guard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"
    end
  end

  def install
    bin.install "mcp-guard"
  end

  test do
    system "#{bin}/mcp-guard", "--version"
  end
end
