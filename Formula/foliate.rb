# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Foliate < Formula
  desc "epub viewer"
  homepage "https://johnfactotum.github.io/foliate/"
  url "https://github.com/johnfactotum/foliate/archive/refs/tags/2.6.4.zip"
  sha256 "5c726b4d7decc66272e3c1a352b1e3502df370b0a855a32d29b0b55aea22da82"
  license "GPL v3"

  # depends_on "cmake" => :build
  depends_on "cmake" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "gjs"
  depends_on "webkitgtk1"
  depends_on "xquartz"
  depends_on "gspell"
  depends_on "gtk+3"
  depends_on "adwaita-icon-theme"
  depends_on "desktop-file-utils"
  depends_on "gettext"
  depends_on "glib"
  depends_on "intltool"
  depends_on "libmagic"
  depends_on "sphinx"
  depends_on "sphinx-doc"
  on_macos do
    depends_on "gtk-mac-integration"
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test foliate`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
