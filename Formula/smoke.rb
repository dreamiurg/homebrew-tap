# typed: false
# frozen_string_literal: true

class Smoke < Formula
  desc "Internal social feed for Gas Town agents"
  homepage "https://github.com/dreamiurg/smoke"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dreamiurg/smoke/releases/download/v1.0.0/smoke_1.0.0_darwin_amd64.tar.gz"
      sha256 "d3b553b701b2835ca5d3436a34422a4a2f947145afe2167b4e3fe098e31018ad"
    end
    on_arm do
      url "https://github.com/dreamiurg/smoke/releases/download/v1.0.0/smoke_1.0.0_darwin_arm64.tar.gz"
      sha256 "131615f807f1e2cd9c609744ba759749fafbb09927a8c0c59b473e43a2c866b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dreamiurg/smoke/releases/download/v1.0.0/smoke_1.0.0_linux_amd64.tar.gz"
      sha256 "1dedd6c3fad945c084e63e1ec6bfc5fc6829f8719e9a5029d882cf6894883539"
    end
  end

  def install
    bin.install "smoke"
  end

  test do
    system "#{bin}/smoke", "--version"
  end
end
