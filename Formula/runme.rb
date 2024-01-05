# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/2.2.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c0485b5b47fb40e1b8f53bf6829564518a6e9c50418e96b21a49af1b974ed837"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://download.stateful.com/runme/2.2.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a2603cda9fdf9fb8fb17754d847004a61613676cb1fd1c833c685d953f3a58a6"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/runme/2.2.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e26213c11696d00478ff80949eb1fc5941590f6235ac9014660855933cced76"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/2.2.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "125662c0e54f5fc603327f7035c29d98d42f0307c237bc05421812707c622795"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  test do
    assert_match "runme #{version}", shell_output("#{bin}/runme version")
  end
end
