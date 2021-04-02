hello: hello.s
	arm-linux-gnueabihf-gcc -static hello.s -o hello


run: hello
	qemu-arm ./hello; test $$? -eq 69
