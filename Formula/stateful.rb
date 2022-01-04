# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stateful < Formula
  desc "CLI for Stateful - Optimize for flow, code better, be happy."
  homepage "https://stateful.com"
  version "0.0.36"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/stateful-cli/0.0.36/stateful_darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ebc6a69baffbae90f9329d84e63ceb08109398b95539b99018ce940450499b06"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://download.stateful.com/stateful-cli/0.0.36/stateful_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f1b319ab86abb099f231e93d6eeef09b0245ddefa0414ad99d2a12ce6c267565"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/stateful-cli/0.0.36/stateful_linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "13c8759883389e94fa514327446a5c31e849dac0bb548a5566d0982e99a93e76"

      def install
        bin.install "stateful"
        (bash_completion/"stateful").write `#{bin}/stateful completion bash`
        (fish_completion/"stateful.fish").write `#{bin}/stateful completion fish`
        (zsh_completion/"_stateful").write `#{bin}/stateful completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/stateful-cli/0.0.36/stateful_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4357e3041fa779d0d63f41354342c28e0e21aa3a4e0a0982656490839f4c0d30"

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
