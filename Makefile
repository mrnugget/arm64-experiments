UNAME:=$(shell uname -s)

hello: hello.s
ifeq ($(UNAME),Linux)
	@arm-linux-gnueabihf-gcc -static hello.s -o hello
endif
ifeq ($(UNAME), Darwin)
	@arm-none-eabi-gcc --specs=nosys.specs -static hello.s -o hello
endif

run: hello
	@qemu-arm ./hello; test $$? -eq 69

docker-image: Dockerfile
	@docker build --quiet -t arm64-experiments . >/dev/null

run-macos:
	@docker run -v $(shell pwd):/code arm64-experiments -c 'make run'
