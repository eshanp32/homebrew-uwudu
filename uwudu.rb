# (U w U)_/××××××××××××××××××××  Brew tap formula  ××××××××××××××××××××\_(U w U)

class Uwudu < Formula
  desc "Your CLI todo list manager"
  homepage "https://github.com/eshanp32/uwudu"
  url "https://github.com/eshanp32/uwudu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2d674e9153a63ebfd845fc9a142bfffe32d2f8282f232a68139033647ee338b1"
  license "MIT"

  depends_on "python@3.9"
  depends_on "pipenv" => :build

  def install
    system "pipenv", "install", "--deploy", "--ignore-pipfile"

    system "pipenv", "run", "python", *Language::Python.setup_install_args(libexec)

    bin.install_symlink libexec/"bin/uwudu"
  end

  test do
    assert_match "uwudu", shell_output("#{bin}/uwudu --version")
  end
end

