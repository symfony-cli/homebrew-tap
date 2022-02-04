# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.3.3"
  license "AGPL-3.0"

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.3/symfony-cli_darwin_all.tar.gz"
    sha256 "d9d63e702701760aa847b9ad5273d22a33f70430f72ea74844ca3b33c4943d81"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.3/symfony-cli_linux_amd64.tar.gz"
      sha256 "44d87619b70ba533643bb354f4897267bb274c9adbeab5c8993b28cbd48a7c97"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.3/symfony-cli_linux_arm64.tar.gz"
      sha256 "7046a70efa5843a47f40d3ba27c1fbf7f686d611ca2e87a60006699ef5f17721"

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
