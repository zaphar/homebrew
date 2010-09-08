require 'formula'

class DbusGlib <Formula
  url 'http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.88.tar.gz'
  homepage ''
  md5 '7c04ba01df6130c2c4e62f73bea0d0d5'

  depends_on 'expat'
  depends_on 'glib'
  depends_on 'd-bus'
  depends_on 'gettext'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
