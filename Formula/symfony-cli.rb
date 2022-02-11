# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.3.4"
  license "AGPL-3.0"

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.4/symfony-cli_darwin_all.tar.gz"
    sha256 "8a15bcbeb700f5daa38428479c3a1a6abe9ffe5e13e1ab1e42b0c384cde11966"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.4/symfony-cli_linux_arm64.tar.gz"
      sha256 "ef7d91dc4d1db7c30bd032ad430195c581c46dc2156c21b6cb4feba2a7c60a27"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.3.4/symfony-cli_linux_amd64.tar.gz"
      sha256 "0195dea95df5545613f7b23a8265dbb3330b1687ad1d4eb1695f8f468d3d36be"

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
