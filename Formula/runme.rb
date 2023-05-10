# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute code snippets directly from Markdown files."
  homepage "https://stateful.com"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stateful.com/runme/1.1.1/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc42c098fddfc67105b27af0eee7a3f01e7bad8e8214d51971603e051e17f67f"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/1.1.1/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "618288f8888028af918a1a78922b9d90d4d3c4696df3ce06dae84033056497a4"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/1.1.1/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d0683cbf8e882f56ed6f8b57af484f4bd563d69b97a9dccd8ca7cef32a29a20"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/runme/1.1.1/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e5b9a06b0e7e21ca98ea7403b8293c97d56a03115196aed4f56eede9b4467209"

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
