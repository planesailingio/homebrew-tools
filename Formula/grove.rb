# typed: false
# frozen_string_literal: true

# Third-party tool — bump by hand when captainsafia/grove cuts a release.
class Grove < Formula
  desc "CLI tool for managing git worktree-based workflows"
  homepage "https://grove.safia.sh"
  version "2.1.0"
  license "MIT"

  # The release assets are bare binaries rather than archives, so each one is
  # staged under its platform-suffixed name and renamed on install.
  on_macos do
    on_intel do
      url "https://github.com/captainsafia/grove/releases/download/v2.1.0/grove-darwin-x64"
      sha256 "597aa167add362370163306ff4bb3fdadb85c45b53e6d5e04eee827992d62820"

      def install
        bin.install "grove-darwin-x64" => "grove"
      end
    end
    on_arm do
      url "https://github.com/captainsafia/grove/releases/download/v2.1.0/grove-darwin-arm64"
      sha256 "c42e57c25b30b9ec9048edd422210be8640592e69bb7057343e730a6739a9ccb"

      def install
        bin.install "grove-darwin-arm64" => "grove"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/captainsafia/grove/releases/download/v2.1.0/grove-linux-x64"
        sha256 "35f61a539cfc7329e743ecc90d274165f6de6d709ef4e3c1cf41a486b3ad936c"

        def install
          bin.install "grove-linux-x64" => "grove"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/captainsafia/grove/releases/download/v2.1.0/grove-linux-arm64"
        sha256 "59826f573409d14ead4ed6101014cff43e4704f66d54b299b7caa8d246be3389"

        def install
          bin.install "grove-linux-arm64" => "grove"
        end
      end
    end
  end

  def caveats
    <<~EOS
      To enable `grove go` to change your shell's directory, add this to your
      shell profile (pass your shell, e.g. bash, zsh or fish):
        eval "$(grove shell-init zsh)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
