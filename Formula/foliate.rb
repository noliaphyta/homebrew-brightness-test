class Foliate < Formula
  desc "epub viewer"
  homepage "https://johnfactotum.github.io/foliate/"
  url "https://github.com/johnfactotum/foliate/archive/refs/tags/2.6.4.tar.gz"
  sha256 "idk what this is"
  revision 0
  head "https://github.com/johnfactotum/foliate.git", branch: "develop"

  depends_on "cmake" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "gjs"
  depends_on "webkitgtk"
  depends_on "gspell"
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
    # Set Homebrew prefix
    ENV["PREFIX"] = prefix
    # Add the pkgconfig for girara to the PKG_CONFIG_PATH
    # TODO: Find out why it is not added correctly for Linux
    ENV["PKG_CONFIG_PATH"] = "#{ENV["PKG_CONFIG_PATH"]}:#{Formula["girara"].prefix}/lib/x86_64-linux-gnu/pkgconfig"

    mkdir "build" do
      system "meson", *std_meson_args, ".."
      system "ninja"
      system "ninja", "install"
    end
  end

  test do
    system "true" # TODO
  end
end
