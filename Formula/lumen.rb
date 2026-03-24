class Lumen < Formula
  desc "Terminal-first wallpaper manager for macOS"
  homepage "https://github.com/dacostarepublic/lumen"
  version "2.0.0"
  url "https://github.com/dacostarepublic/lumen/releases/download/v2.0.0/lumen-v2.0.0-macos.tar.gz"
  sha256 "bfe9f632c56890eb796152f5cfaf6f08ec5096a4df16a4014c0c860a5797e946"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "lumen"
  end

  test do
    output = shell_output("#{bin}/lumen --version")
    assert_match version.to_s, output

    path_output = shell_output("#{bin}/lumen config path")
    assert_match ".lumen-config", path_output
  end
end
