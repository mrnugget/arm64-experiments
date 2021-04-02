# arm64-experiments

Just trying to see what it takes to cross-compile ARM64 assembly on x86-64 Linux
and macOS.

## Requirements

### Linux x86-64

Install gcc for arm:

```
apt-get install gcc-arm-linux-gnueabihf
```

Install QEMU to execute the ARM executable:

```
apt-get install qemu-user
```

## Running

```
make run
```

That should print `Hello!` and check that the exit code is 69.
