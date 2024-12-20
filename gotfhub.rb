# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotfhub < Formula
  desc ""
  homepage ""
  version "0.0.10"

  on_macos do
    on_intel do
      url "https://github.com/planesailingio/gotfhub/releases/download/0.0.10/gotfhub_0.0.10_darwin_amd64.tar.gz"
      sha256 "d8a9a19164a930f3417c914f41a9c7f5d78ed14bab9f6d27af7f803ac1baf5d1"

      def install
        bin.install "bin/0.0.10/darwin/amd64/gotfhub"
      end
    end
    on_arm do
      url "https://github.com/planesailingio/gotfhub/releases/download/0.0.10/gotfhub_0.0.10_darwin_arm64.tar.gz"
      sha256 "db0f44f8838497b32704e5ac43ebac6fbe8dd81c44cac3b174b1c7e93e42eea0"

      def install
        bin.install "bin/0.0.10/darwin/arm64/gotfhub"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planesailingio/gotfhub/releases/download/0.0.10/gotfhub_0.0.10_linux_amd64.tar.gz"
        sha256 "e4d72962a1fb9f4d7f63830c30c7659bc3fe980c24751001f8a95c6047a959b5"

        def install
          bin.install "bin/0.0.10/linux/amd64/gotfhub"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planesailingio/gotfhub/releases/download/0.0.10/gotfhub_0.0.10_linux_arm64.tar.gz"
        sha256 "e63d33cbe46d7087d3d545981a61148e568c5dec9cac9e3d3ccfccc77ef9bec6"

        def install
          bin.install "bin/0.0.10/linux/arm64/gotfhub"
        end
      end
    end
  end
end
