ln -s lib/libcrypto.so.1.0.0 lib/libcrypto.so
ln -s lib/libssl.so.1.0.0 lib/libssl.so
make
mv *.so ./lib
