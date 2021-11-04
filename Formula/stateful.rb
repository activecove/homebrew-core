# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stateful < Formula
  desc ""
  homepage ""
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.6/stateful_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6c8c9dd7cc940bf56e932453acc462440a0c365cc3e603f0e1654cb1a8225b01"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.6/stateful_darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3a678c9bfee055da9bf238a16669255e6122605e3bf1864161df50db5dbdc525"

      def install
        bin.install "stateful"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.6/stateful_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "50f666692da162bd997e167561b6c3f8dc2a57d6887a2b6e28f3ba1ad3a9ec4f"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.6/stateful_linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "aebd6596a4b8cf48164d1f19e3d51d8f86101262d69a3248dea8ba05654042af"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.6/stateful_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "6c27b502bcaca03c75450e98a172fd5293e75608d17809c4ed48109454a710b4"

      def install
        bin.install "stateful"
      end
    end
  end
end
