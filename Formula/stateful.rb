# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stateful < Formula
  desc "CLI for Stateful - Optimize for flow, code better, be happy."
  homepage "https://stateful.com"
  version "0.0.21-rc1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-a1a00b/0.0.21-rc1/stateful_darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2d61fa36eeee5e14bdf76c61e82a3609c965026aac23493084adf6ca27e790ac"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/stateful-cli-artifacts-a1a00b/0.0.21-rc1/stateful_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5120aa73616f96011c5ab39c7c07c2cba673cf02b7803aeed7ec6b059c64d9ce"

      def install
        bin.install "stateful"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/stateful-cli-artifacts-a1a00b/0.0.21-rc1/stateful_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "897bafea1e1f8d855c61ff64b707b7997b796beab2602de7b55915020475cf8b"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-a1a00b/0.0.21-rc1/stateful_linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "aca073ab547646726a9b9d1fb70040c0c2360d60cd9b48211910c71163e08d71"

      def install
        bin.install "stateful"
      end
    end
  end
end
