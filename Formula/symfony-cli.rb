# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.10.5"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.5/symfony-cli_darwin_all.tar.gz"
    sha256 "345a4dacde39b448cb8f6ac4089e264b086e94649950c603ecf74eb6dc0766b3"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.5/symfony-cli_linux_amd64.tar.gz"
        sha256 "91ee674a63c2d5d7c952d490e96f4fcca5e4e67be74e788e6d33f3b74fd9b0f2"

        def install
          bin.install "symfony"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.5/symfony-cli_linux_armv6.tar.gz"
        sha256 "b685cc731cbfd4c5bbfe41d86c7cd001aa83f8dc79ab1f18c5a7541604579f7d"

        def install
          bin.install "symfony"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.5/symfony-cli_linux_arm64.tar.gz"
        sha256 "b5f5b21ab4f67c384e58c7de178d1509ca5b40169c622807da8f83fc879e6e1d"

        def install
          bin.install "symfony"
        end
      end
    end
  end

  def caveats
    <<~EOS
      To install shell completions, add this to your profile:
        if command -v symfony &>/dev/null; then
          eval "$(symfony completion)"
        fi
    EOS
  end

  service do
    run ["#{bin}/symfony", "local:proxy:start", "--foreground"]
    keep_alive true
  end

  test do
    system "#{bin}/symfony version"
  end
end
