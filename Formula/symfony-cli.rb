# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.2.1"
  license "AGPL-3.0"

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.2.1/symfony-cli_darwin_all.tar.gz"
    sha256 "964fa0a5212621eeb046f20352520decac14016e3c565daa137f01672f0b80ca"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.2.1/symfony-cli_linux_amd64.tar.gz"
      sha256 "2b69dbb429a252ba6e111132f7e22dd108513d007eb40f546cd2b96674afb3de"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.2.1/symfony-cli_linux_arm64.tar.gz"
      sha256 "ae9b973ccc985b4eec7512bd970d9463cad29094622e96e2c3b2ec897f60ab6d"

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
