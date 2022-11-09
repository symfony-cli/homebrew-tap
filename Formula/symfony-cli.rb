# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.4.18"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.18/symfony-cli_darwin_all.tar.gz"
    sha256 "d4a50e2f3d0b7cfc688d3bb072d7d984ddfc600e09d51b24e40d8cf33f897532"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.18/symfony-cli_linux_amd64.tar.gz"
      sha256 "c29ad180616a85ea5d4e99ff36667d68adb76b4fbcbf46c266f4551184d68311"

      def install
        bin.install "symfony"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.18/symfony-cli_linux_arm64.tar.gz"
      sha256 "32a38d45e40014b06bb66d1039fe3ac320b64e008de1cc8ffea8a808907778bd"

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
