set -e

export PKG_CONFIG_PATH=/home/julian/myopensourceprojects/kiwix-build/BUILD_native_dyn/INSTALL/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=/home/julian/myopensourceprojects/kiwix-build/BUILD_native_dyn/INSTALL/lib/x86_64-linux-gnu
g++ `pkg-config --cflags apr-1 kiwix` -fPIC -DPIC -I/usr/include/apache2/ -I/home/julian/myopensourceprojects/kiwix-build/BUILD_native_dyn/INSTALL/include/ -c mod_example.cpp
sudo apxs -i -n example_module `pkg-config --libs apr-1 kiwix` -c mod_example.o
