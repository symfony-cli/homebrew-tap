# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SymfonyCli < Formula
  desc "Symfony CLI helps Symfony developers manage projects, from local code to remote infrastructure"
  homepage "https://symfony.com"
  version "5.10.8"
  license "AGPL-3.0"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.8/symfony-cli_darwin_all.tar.gz"
    sha256 "62d1acb86c527976b632be22183b7458663e5bdc5e1655e2fc69e03878b5702c"

    def install
      bin.install "symfony"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.8/symfony-cli_linux_amd64.tar.gz"
        sha256 "82e387c25a3e2e6cc453aeb0200ff980f273e858526010bbdf274d156989d198"

        def install
          bin.install "symfony"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.8/symfony-cli_linux_armv6.tar.gz"
        sha256 "57ca287f084cce504701c81b1e0e65565692566a14ea542704b8c83b1cb8d2c9"

        def install
          bin.install "symfony"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/symfony-cli/symfony-cli/releases/download/v5.10.8/symfony-cli_linux_arm64.tar.gz"
        sha256 "1821e1c8fba39cc88b940bcca971f163dadc5f0f0ef6cc18cdb8641ba5dba510"

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
