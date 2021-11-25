# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Girror < Formula
  desc "Git mirror one-liner"
  homepage ""
  url "https://github.com/Huseyinnurbaki/girror/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9f9ec7775e6568d64cb0da398daf3afa85d2ae2a9d873dcc72c1799e29ff8ff9"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end
end
