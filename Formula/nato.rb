# typed: false
# frozen_string_literal: true

class Nato < Formula
  desc "Convert text to NATO phonetic alphabet with color support"
  homepage "https://github.com/dreamiurg/nato"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dreamiurg/nato/releases/download/v1.0.0/nato_1.0.0_darwin_amd64.tar.gz"
      sha256 "302ad8272498bc3cd6d10fe98b70e8d401c9005b3caafec02e4a0620b4e09e89"
    end
    on_arm do
      url "https://github.com/dreamiurg/nato/releases/download/v1.0.0/nato_1.0.0_darwin_arm64.tar.gz"
      sha256 "a3ad11992a97c76e7a6c39857f39da02c5e0a16c43037d2e894179cb54d31d04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dreamiurg/nato/releases/download/v1.0.0/nato_1.0.0_linux_amd64.tar.gz"
      sha256 "41e0e9ea581babffd49e35301f231d8a67793a1006d4da50689751ce914dd6ff"
    end
    on_arm do
      url "https://github.com/dreamiurg/nato/releases/download/v1.0.0/nato_1.0.0_linux_arm64.tar.gz"
      sha256 "e34f6f65625393773be28c2064877807aa60990052006fd0742ff15910e5be12"
    end
  end

  def install
    bin.install "nato"
  end

  test do
    assert_match "Hotel Echo Lima Lima Oscar", shell_output("#{bin}/nato hello")
  end
end
