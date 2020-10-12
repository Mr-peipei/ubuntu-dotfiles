#version ubuntu 20.04

sudo apt update
cd /opt/
git clone git@github.com:vim/vim.git
cd vim
make distclean

rm src/suto/config.cache

sudp apt install \
  lua5.2 \
  liblua5.2-dev \
  luajit \
  libluajit-5.2 \
  ruby-dev \
  xorg-dev

sudo ./configure \
  --with-features=huge \
  --with-x \  #clipboard
  --enable-multibyte \
  --enable-luainterp=dynamic \
  --enable-gpm \
  --enable-cscope \
  --enable-fontset \
  --enable-fail-if-missing \
  --prefix=/usr/local \
  --enable-pythoninterp=dynamic \
  --enable-python3interp=dynamic \
  --enable-rubyinterp=dynamic \
  --enable-gui=auto \
  --enable-gtk2-check


sudo make
sudo make install
done
