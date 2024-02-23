# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitAge < Formula
  desc "git-age is a smudge/clean filter to encrypt/decrypt files in a git repository transparently"
  homepage "https://github.com/prskr/git-age"
  version "0.1.8"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prskr/git-age/releases/download/v0.1.8/git-age_Darwin_arm64.tar.gz"
      sha256 "a0bc5cd5d55531500e370b16eafae8ff1ff31c331fa8d2f6d23760b735da96a6"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.8/git-age_Darwin_x86_64.tar.gz"
      sha256 "619b1bbf625348414e1f86b5fcaefcb9b665f9ae0e224c16b6b7eef68a474289"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prskr/git-age/releases/download/v0.1.8/git-age_Linux_arm64.tar.gz"
      sha256 "0d3c8844a3fbaca7b095ac267c7e60c89158ddded591c756688e1f37c01a4e20"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.8/git-age_Linux_x86_64.tar.gz"
      sha256 "31ca3cb4e191eac382094888c5d9139585e15e9e8c418fb8b50912f989214cf3"

      def install
        bin.install "git-age"
        man1.install "docs/git-age.1.gz"
      end
    end
  end

  test do
    system "#{bin}/git-age --help"
  end
end
