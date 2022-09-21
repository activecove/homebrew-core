# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stateful < Formula
  desc "CLI for Stateful - Optimize for flow, code better, be happy."
  homepage "https://stateful.com"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/stateful-cli/0.1.11/stateful_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9436b33840b526488dd3f81c4e559f4f4e45ed7572cd84d8476089f54e7173f5"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://download.stateful.com/stateful-cli/0.1.11/stateful_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "68969068b81a3c1b7bb63636d716930ff69431bcd5082ee95757ee50bc83aeaa"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/stateful-cli/0.1.11/stateful_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f8dc56768b5d8e2d7161f86bb82f49560bebe26a6d4f5b8beb154e1d5a668c4"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/stateful-cli/0.1.11/stateful_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "d66232b8503bb4b0e58b64503723c607e1ed5598c6b983d375bf9e6d79ed459f"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
  end

  test do
    assert_match "stateful #{version}", shell_output("#{bin}/stateful version")
  end
end
