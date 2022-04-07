<div align="center"><table style="width:100%;height:auto">
<tr><td align="center">
<a title="ZI" target="_self" href="https://github.com/z-shell/zi/">
<h2><img align="center" style="width:60px;height:auto" src="https://github.com/z-shell/zi/raw/main/docs/images/logo.svg" alt="ZI Logo" /></a>
❮ ZI ❯ Annex - Test </h2><h3> 
<p>An annex that runs tests via make or zunit</p> If any found – after installing and updating
a plugin or snippet. </h3>
</td></tr>
<tr><td align="center">
<img style="width:90%;height:auto" src="https://user-images.githubusercontent.com/59910950/162143845-c44ead50-b21a-46c0-8372-18325eb1f33a.gif" alt="Preview" />
</td></tr></table></div>

### Install

Zunit install if missing:

```zsh
zi for @zunit
```

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
