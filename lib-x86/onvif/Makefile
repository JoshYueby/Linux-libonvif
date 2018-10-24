#－－目标
EXEC = libonvif.so
SRC = $(wildcard ./src/*.c)

#--动态库编译选项
#cc = mips-openwrt-linux-gcc
#MIPSFLAGS += -O3 -DWITH_DOM -DWITH_OPENSSL -DWITH_NO_C_LOCALE
CFLAGS += -fPIC -shared  -Wall -g -I./include -I./include/onvif -I./include/openssl -L./lib
LDLIBS += -lcrypto -lssl
#－－目标及规则
all: $(EXEC)
$(EXEC): $(SRC)
	$(CC) $(CFLAGS) $(MIPSFLAGS) -o $@ $(SRC) $(LDLIBS)

clean:
	-rm -f $(EXEC) *.elf *.gdb *.o *.so
