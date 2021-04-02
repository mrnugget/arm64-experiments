UNAME:=$(shell uname -s)

hello: hello.s
ifeq ($(UNAME),Linux)
	arm-linux-gnueabihf-gcc -static hello.s -o hello
endif
ifeq ($(UNAME), Darwin)
	arm-none-eabi-gcc --specs=nosys.specs -static hello.s -o hello
endif

run: hello
	qemu-arm ./hello; test $$? -eq 69
