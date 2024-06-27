# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.3.5"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.3.5/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "b4699e0ece4600ab3edf3078f3ed6e9ca47f6e4cebf76209d9bc94028195a5ac"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.3.5/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "69fe5979765aac47e46d68a0ffee3f7434983e7dccf4a0672b019e0fe542a9ab"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://download.stateful.com/runme/3.3.5/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "84dbb50a25a36e2717f9aee0908e59560663813ec096a8ad4640756b883223af"

        def install
          bin.install "runme"
          (bash_completion/"runme").write `#{bin}/runme completion bash`
          (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
          (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://download.stateful.com/runme/3.3.5/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "73de9d3982e24652c2fd455c34936ecd7c8d87132f7b7c25fbc819aaf525ee97"

        def install
          bin.install "runme"
          (bash_completion/"runme").write `#{bin}/runme completion bash`
          (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
          (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
        end
      end
    end
  end

  test do
    assert_match "runme #{version}", shell_output("#{bin}/runme version")
  end
end
