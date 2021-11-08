# `Z-A-TEST`

## Introduction

A Zsh-Zinit extension (i.e. an
[annex](http://z-shell.github.io/zinit/wiki/Annexes/)) that runs tests (via `make
test`, for example) – if it finds any of them  – after installing and updating
a plugin or snippet. Simply load it like any other plugin to make it active:

```zsh
zinit light z-shell/z-a-test
```

## Configuration

To run the tests in a verbose mode, issue:

```zsh
zstyle :zinit:annex:test quiet 0
```

before installing or updating the plugin. To skip tests for a single plugin,
add `notest` ice:

```zsh
zinit ice notest
zinit load …
```

## Examples

Example activation in the default quiet mode:

![z-a-test activation](https://raw.githubusercontent.com/z-shell/z-a-test/main/images/z-p-test-1.png)


Example activation in non-quiet mode:

![z-a-test activation](https://raw.githubusercontent.com/z-shell/z-a-test/main/images/z-p-test-2.png)

<!-- vim:set ft=markdown:tw=80: -->
