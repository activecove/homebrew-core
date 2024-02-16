# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stateful.com/runme/3.0.1/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "19bbc12ff2a7cad50178cafd83374f069c75abfb34157f58ae291fad6e31d235"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/3.0.1/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9795af4451e3f5042400f8b5adfeafeda9d7a15db258aa5cdbea0c66d21cd5f9"

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
      url "https://download.stateful.com/runme/3.0.1/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ce63fd430dc23a80cf2a8d14affec0ca03b4f927b62dcf791a2b3d76d0ba305"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/3.0.1/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6914c43e74094ea967cb654eefdb6ec27ee2b77d597c6a52e6e6d82cfcf8374a"

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
