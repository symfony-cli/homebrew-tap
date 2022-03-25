# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.4.5"
  license "AGPL-3.0"

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.5/symfony-cli_darwin_all.tar.gz"
    sha256 "46f0e9005578862ba0cd2751a5d7547310a57a48cfdc2b4f1f1c1af112f99513"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.5/symfony-cli_linux_arm64.tar.gz"
      sha256 "96218d8e762fe9725421e32f23f39d73bd3f97322783b309eade0f174478fdf6"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.5/symfony-cli_linux_amd64.tar.gz"
      sha256 "f0cf477b9ff214a59626b5f1429afc27aa83f4f0676e2f73c59556292932a2f9"

      def install
        bin.install "symfony"
      end
    end
  end

  depends_on "git" => :optional

  test do
    system "#{bin}/symfony version"
  end
end
