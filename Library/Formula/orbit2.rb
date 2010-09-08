require 'formula'

class Orbit2 <Formula
  url 'ftp://ftp.gnome.org/pub/gnome/sources/ORBit2/2.14/ORBit2-2.14.18.tar.gz'
  homepage ''
  md5 '174ba9d6e96dd382e6166df950ed86ff'

  depends_on 'libidl'
  depends_on 'glib'
  depends_on 'popt'
  depends_on 'pkg-config'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
