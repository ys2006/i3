yum update

#Install for compiling and configuring needs
yum install nano bzip2 gcc git pkgconfig autoconf automake libtool gperf byacc libxslt bison flex

#Install needed and available development libraries
yum install libxcb-devel libXcursor-devel pango-devel pcre-devel perl-Data-Dumper perl-Pod-Parser startup-notification-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel yajl-devel check-devel gettext-devel xterm 
yum install xorg-x11-xkb-extras xorg-x11-xkb-utils-devel libxkbfile-devel libev-devel

#Add the following lines to a new file at the below location
#/etc/profile.d/pclib.sh
export XORG_CONFIG=/etc/X11/
export PKG_CONFIG_LIBDIR=/usr/local/lib/pkgconfig/:/usr/lib/pkgconfig/:/usr/lib64/pkgconfig/
export PKG_CONFIG_PATH=/usr/share/pkgconfig/:/usr/local/share/pkgconfig/
export ACLOCAL_PATH=/usr/local/share/aclocal/
export LD_LIBRARY_PATH=/usr/local/lib/

#Restart the machine so kernel and env vars take place.

#! /bin/bash
mkdir ~/src
cd ~/src
mkdir -p anongit.freedesktop.org/git/xorg/util/
cd ~/src/anongit.freedesktop.org/git/xorg/util/
git clone https://anongit.freedesktop.org/git/xorg/util/macros.git
cd ~/src/anongit.freedesktop.org/git/
mkdir xcb
cd ~/src/anongit.freedesktop.org/git/xcb
git clone https://anongit.freedesktop.org/git/xcb/util-renderutil.git
git clone https://anongit.freedesktop.org/git/xcb/util-image.git
git clone https://anongit.freedesktop.org/git/xcb/util-cursor.git
git clone https://anongit.freedesktop.org/git/xcb/util-renderutil.git
git clone https://anongit.freedesktop.org/git/xcb/libxcb.git
git clone https://anongit.freedesktop.org/git/xcb/proto.git
mkdir -p ~/src/github.com/xkbcommon/
cd  ~/src/github.com/xkbcommon/
git clone https://github.com/xkbcommon/libxkbcommon.git
mkdir -p ~/src/git.savannah.gnu.org/r
cd ~/src/git.savannah.gnu.org/r
git clone http://git.savannah.gnu.org/r/confuse.git
mkdir -p ~/src/github.com/i3
cd  ~/src/github.com/i3
git clone https://github.com/i3/i3.git

# Macros
cd ~/src/anongit.freedesktop.org/xorg/util/macros/
git tag -l 
git checkout tags/util-macros-1.19.0
./autogen.sh
make 
sudo make install

#util-render
cd ../../../xcb/util-renderutil/
git submodule update --init
git tag -l 
git checkout tags/0.3.9
./autogen.sh
make 
sudo make install

#util-image
cd ../util-image/
git submodule update --init
git tag -l 
git checkout tags/0.4.0
./autogen.sh
make 
sudo make install

#util-cursor
cd ../util-cursor/
git submodule update --init
git tag -l 
git checkout tags/0.1.2
./autogen.sh
make 
sudo make install

#proto
cd ../proto/
git tag -l 
git checkout tags/1.11
./autogen.sh
make 
sudo make install

#libxcb
cd ../libxcb/
git tag -l 
git checkout tags/1.11.1
./autogen.sh
make 
sudo make install

#xkbcommon
cd ~/src/github.com/xkbcommon/libxkbcommon/
git tag -l 
git checkout tags/xkbcommon-0.6.1
./autogen.sh
make 
sudo make install

#confuse 
cd ~/src/git.savannah.gnu.org/r/confuse/
git tag -l 
git checkout tags/V2_7
./autogen.sh
make
sudo make install

#i3
cd ~/src/github.com/i3/i3/
git tag -l 
git checkout tags/4.10.4
make 
sudo make install

#i3status
cd ..
sudo yum install pulseaudio-libs-devel alsa-lib-devel asciidoc 
sudo yum install libnl3 libnl3-devel libnl libnl-devel wireless-tools-devel
git clone https://github.com/i3/i3status.git
cd i3status/
make
sudo make install

#i3lock
cd ..
sudo yum install -y pam-devel
git clone https://github.com/i3/i3lock.git
cd i3lock
make
sudo make install
sudo ln -s /usr/share/X11/xkb /usr/local/share/X11/xkb

# Macros
cd ~/src/anongit.freedesktop.org/git/xorg/util/macros/
git tag -l 
git checkout tags/util-macros-1.19.0
./autogen.sh
make 
sudo make install

#util-render
cd ../../../xcb/util-renderutil/
git submodule update --init
git tag -l 
git checkout tags/0.3.9
./autogen.sh
make 
sudo make install

#util-image
cd ../util-image/
git submodule update --init
git tag -l 
git checkout tags/0.4.0
./autogen.sh
make 
sudo make install

#util-cursor
cd ../util-cursor/
git submodule update --init
git tag -l 
git checkout tags/0.1.2
./autogen.sh
make 
sudo make install

#proto
cd ../proto/
git tag -l 
git checkout tags/1.11
./autogen.sh
make 
sudo make install

#libxcb
cd ../libxcb/
git tag -l 
git checkout tags/1.11.1
./autogen.sh
make 
sudo make install

#xkbcommon
cd ~/src/github.com/xkbcommon/libxkbcommon/
git tag -l 
git checkout tags/xkbcommon-0.6.1
./autogen.sh
make 
sudo make install

#confuse 
cd ~/src/git.savannah.gnu.org/r/confuse/
git tag -l 
git checkout tags/V2_7
./autogen.sh
make
sudo make install

#i3
cd ~/src/github.com/i3/i3/
git tag -l 
git checkout tags/4.10.4
make 
sudo make install

#i3status
cd ..
sudo yum install pulseaudio-libs-devel alsa-lib-devel asciidoc 
sudo yum install libnl3 libnl3-devel libnl libnl-devel wireless-tools-devel
git clone https://github.com/i3/i3status.git
cd i3status/
make
sudo make install

#i3lock
cd ..
sudo yum install -y pam-devel
git clone https://github.com/i3/i3lock.git
cd i3lock
make
sudo make install
sudo ln -s /usr/share/X11/xkb /usr/local/share/X11/xkb
