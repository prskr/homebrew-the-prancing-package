class GitAge < Formula
  desc "git-age is a smudge/clean filter to encrypt/decrypt files in a git repository transparently"
  homepage "https://github.com/prskr/git-age"
  license "MIT"

  depends_on "git" => :run

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prskr/git-age/releases/download/v0.1.0/git-age_Darwin_arm64.tar.gz"
      sha256 "1e61e9edb06df0265d9c3ac3d1944e557ce29ebb53082ab21c3ffcd4f9abdc00"

      def install
        bin.install "git-age"
      end
    
      test do
        system "#{bin}/git-age", "--help"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.0/git-age_Darwin_x86_64.tar.gz"
      sha256 "f5dec269a6676e9c618b296af0a70eb0a3451b6d0999d88d5a668494fd580a0e"

      def install
        bin.install "git-age"
      end
    
      test do
        system "#{bin}/git-age", "--help"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prskr/git-age/releases/download/v0.1.0/git-age_Linux_arm64.tar.gz"
      sha256 "9c40bb5e7c45d9d1b29ccb6e2143d2eed32446079048fd0db9ecaf882c46fa61"

      def install
        bin.install "git-age"
      end
    
      test do
        system "#{bin}/git-age", "--help"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/prskr/git-age/releases/download/v0.1.0/git-age_Linux_x86_64.tar.gz"
      sha256 "e826b731e6ceff23a7fe0edc3ecd964861772bc99c60e0b10e38cf1d21e56c67"

      def install
        bin.install "git-age"
      end
    
      test do
        system "#{bin}/git-age", "--help"
      end
    end
  end
end