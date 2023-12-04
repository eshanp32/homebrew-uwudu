# (U w U)_/××××××××××××××××××××  Brew tap formula  ××××××××××××××××××××\_(U w U)

class Uwudu < Formula
  include Language::Python::Virtualenv

  desc "Formula for uwudu - your python todo cli (U w U)"
  homepage "https://github.com/eshanp32/uwudu"
  url "https://files.pythonhosted.org/packages/37/9a/e8e2f33e9bb0e18596c418bc73efd1a686aa96693cc3c5ddb758ed6ca42a/uwudu-0.1.0.tar.gz"
  sha256 "adc1ea9b18f9f14ed946d7614b9202bdd103d282edabca23f4e58e55be8e1630"
  license "MIT"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/e1/c0/5e9c4d2a643a00a6f67578ef35485173de273a4567279e4f0c200c01386b/prettytable-3.9.0.tar.gz"
    sha256 "f4ed94803c23073a90620b201965e5dc0bccf1760b7a7eaf3158cab8aaffdf34"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/d7/12/63deef355537f290d5282a67bb7bdd165266e4eca93cd556707a325e5a24/wcwidth-0.2.12.tar.gz"
    sha256 "f01c104efdf57971bcb756f054dd58ddec5204dd15fa31d6503ea57947d97c02"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end




