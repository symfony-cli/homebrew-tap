# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.7.5"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.5/symfony-cli_darwin_all.tar.gz"
    sha256 "86f40aa06a612ed1057317a8bf1823fe63a943515336b8808ce9aa77b742357d"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.5/symfony-cli_linux_armv6.tar.gz"
      sha256 "00221a0045dfbc980a18bead0c174041f8cbc4f63e4ff3c81d8cf391f353e510"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.5/symfony-cli_linux_arm64.tar.gz"
      sha256 "1f5c57a407482d689429d2a6ae6b33bd89881b43f61f2162ace7386570d9fa72"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.5/symfony-cli_linux_amd64.tar.gz"
      sha256 "584e69add9bcb3bbf0c82c4da626c52924428181c85820a20c7f355e427eccac"

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
