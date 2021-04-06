# arm64-experiments

Just trying to see what it takes to cross-compile ARM64 assembly on x86-64 Linux
and macOS.

TODOs:

- [ ] No way to execute on macOS yet

## Requirements

### macOS

Install the gcc toolchain for _embedded_ programming, which is different from
the Linux version below:

```
brew --cask install gcc-arm-embedded
```

Install QEMU to execute the ARM executable:
```
brew install qemu
```

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


## Resources

- [Compiling to Assembly from Scratch](https://keleshev.com/compiling-to-assembly-from-scratch/)
- https://gist.github.com/joegoggins/7763637
- [rsms/qemu-macos-x86-arm64](https://github.com/rsms/qemu-macos-x86-arm64)
