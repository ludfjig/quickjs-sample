download-qjs:
    wget https://bellard.org/quickjs/quickjs-2024-01-13.tar.xz
    tar -xvf quickjs-2024-01-13.tar.xz
    rm quickjs-2024-01-13.tar.xz

test:
    clang test.c -I quickjs-2024-01-13/ quickjs-2024-01-13/quickjs.c quickjs-2024-01-13/libregexp.c quickjs-2024-01-13/libunicode.c quickjs-2024-01-13/cutils.c quickjs-2024-01-13/libbf.c -DCONFIG_VERSION=\"2024-01-13\" -D_GNU_SOURCE -lm -DCONFIG_BIGNUM 