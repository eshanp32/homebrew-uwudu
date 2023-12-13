# (U w U)_/××××××××××××××××××××  Brew tap formula  ××××××××××××××××××××\_(U w U)

class Uwudu < Formula
  include Language::Python::Virtualenv

  desc "Formula for uwudu - your python todo cli (U w U)"
  homepage "https://github.com/eshanp32/uwudu"
  url "https://files.pythonhosted.org/packages/b7/80/d4c41c94a7321ae5e90e70a252b3619d2acf9fbfc8c18c360848243f4bce/uwudu-1.0.1.tar.gz"
  sha256 "968269bd1a8fc68db54ad4360d2c18c8fc5c070802c957f79384c0eb6c64420f"

  depends_on :python3

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/e1/c0/5e9c4d2a643a00a6f67578ef35485173de273a4567279e4f0c200c01386b/prettytable-3.9.0.tar.gz"
    sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end





