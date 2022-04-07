<h1> ZI Annex Test </h1>

A [ZI](https://github.com/z-shell/zi) annex (extension) that runs tests (via `make test`, for example) – if it finds any of them – after installing and updating
a plugin or snippet. Simply load it like any other plugin to make it active:

```zsh
zi light z-shell/z-a-test
```

## Configuration

To run the tests in a verbose mode, issue:

```zsh
zstyle :zi:annex:test quiet 0
```

before installing or updating the plugin. To skip tests for a single plugin,
add `notest` ice:

```zsh
zi ice notest
zi load …
```

### Examples

Example activation in the default quiet mode:

![z-a-test activation](https://raw.githubusercontent.com/z-shell/z-a-test/main/docs/images/z-p-test-1.png)

Example activation in non-quiet mode:

![z-a-test activation](https://raw.githubusercontent.com/z-shell/z-a-test/main/docs/images/z-p-test-2.png)

---

This repository is compatible with [ZI](https://github.com/z-shell-zi)
