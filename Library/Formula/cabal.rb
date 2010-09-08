require 'formula'

class Cabal <Formula
  url 'http://haskell.org/cabal/release/cabal-1.8.0.4/Cabal-1.8.0.4.tar.gz'
  homepage ''
  md5 ''

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
