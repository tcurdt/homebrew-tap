# typed: false
# frozen_string_literal: true

class ReleaseGo < Formula
  desc ""
  homepage ""
  version ""
  license ""

  # depends_on "git"
  # depends_on "go" => :optional
  # conflicts_with "foo"

  on_macos do
    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "release-go"
      end
    end
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "release-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "release-go"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url ""
      sha256 ""

      def install
        bin.install "release-go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url ""
      sha256 ""

      def install
        bin.install "release-go"
      end
    end
  end

  test do
    # system "#{bin}/release-go -v"
  end

end