require 'formula'

class Gconf <Formula
  url 'ftp://ftp.gnome.org/pub/GNOME/sources/GConf/2.9/GConf-2.9.91.tar.gz'
  homepage ''
  md5 '39ba344cfdba395429bafec9bf3e505d'

  # depends_on 'cmake'
  depends_on 'pkg-config'
  depends_on 'orbit2'
  depends_on 'intltool'
  depends_on 'dbus-glib'
  depends_on 'gtk+'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--without-openldap", "--prefix=#{prefix}"
    system "make install"
  end
end
