class Lumen < Formula
  desc "Terminal-first wallpaper manager for macOS"
  homepage "https://github.com/dacostarepublic/lumen"
  url "https://github.com/dacostarepublic/lumen/releases/download/v2.1.0/lumen-v2.1.0-macos.tar.gz"
  sha256 "b66ee98a403143001524d30fc28b3e4e9c47da66845484ae069a7e05426bad0c"
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
