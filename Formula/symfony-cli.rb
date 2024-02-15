# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.8.10"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.8.10/symfony-cli_darwin_all.tar.gz"
    sha256 "ce851f04544f3228efdf6d119ddec2eb7ae09ba05eb07858ad6eba379417a2a8"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.8.10/symfony-cli_linux_armv6.tar.gz"
      sha256 "154d459185ccc4e3c2ca8884281b89b739ff3d259ce62c51e5943bf3e83e7b26"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.8.10/symfony-cli_linux_arm64.tar.gz"
      sha256 "c5fd5e7e72ccf472bb8f9a252f8d12fabd075e40e2b5b831619a183f696c76e5"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.8.10/symfony-cli_linux_amd64.tar.gz"
      sha256 "9e400839a919fcb5d6d73ad3c9d6f8bb9ce4d63a1a0532d1055de946af55e978"

      def install
        bin.install "symfony"
      end
    end
  end

  service do
    run ["#{bin}/symfony", "local:proxy:start", "--foreground"]
    keep_alive true
  end

  test do
    system "#{bin}/symfony version"
  end
end
