# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.7.8"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.8/symfony-cli_darwin_all.tar.gz"
    sha256 "4394464a0b4b071ec7aabb358c01f772bc5ae00f74e907864bfc3420e115ae2f"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.8/symfony-cli_linux_armv6.tar.gz"
      sha256 "a60dcf4cb813806a03e0be24d1521b82ff1103da8374f93a9639a6a5326b567f"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.8/symfony-cli_linux_arm64.tar.gz"
      sha256 "38c7b0cb3f35d2c6824b6ae3e4ec029b187d9480bea7c5721197c2d4bd273c8f"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.7.8/symfony-cli_linux_amd64.tar.gz"
      sha256 "4b8bbcf67c6ab09e096cce99f70f455880551f532af05053444623eff1732a21"

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
