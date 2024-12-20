# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitAgeKeyringAgent < Formula
  desc "git-age agent to store and load identities from your OS' keyring
"
  homepage "https://github.com/prskr/git-age-keyring-agent"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.7/git-age-keyring-agent_Darwin_x86_64.tar.gz"
      sha256 "70e75d71b77fecf5aaf3284840d6466f13faa9e60bf512953c247fe9a832fb91"

      def install
        bin.install "git-age-keyring-agent"
      end
    end
    on_arm do
      url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.7/git-age-keyring-agent_Darwin_arm64.tar.gz"
      sha256 "e629e832629f0504e8b77e60f4258e0059a0c3740543ec2d728a8138721f0759"

      def install
        bin.install "git-age-keyring-agent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.7/git-age-keyring-agent_Linux_x86_64.tar.gz"
        sha256 "5322a2ddadd870f090867f8bf01972f700e36ac69539b6fd2eacb9a6d3048d11"

        def install
          bin.install "git-age-keyring-agent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prskr/git-age-keyring-agent/releases/download/v0.1.7/git-age-keyring-agent_Linux_arm64.tar.gz"
        sha256 "4404eaa1af19b06527d3f49ffd64dc1e23f77edbdb8ee7c3fdaa45f163e97cb1"

        def install
          bin.install "git-age-keyring-agent"
        end
      end
    end
  end

  service do
    run [opt_bin/"git-age-keyring-agent", "serve"]
    keep_alive true
  end

  test do
    system "#{bin}/git-age-keyring-agent --help"
  end
end
