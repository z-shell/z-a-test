# According to the Zsh Plugin Standard:
# https://github.com/z-shell/zi/wiki/Zsh-Plugin-Standard
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz za-test-handler za-test-make-targets

# An empty stub to fill the help handler fields
za-test-help-null-handler() { :; }

# Register atclone hook
@zi-register-annex "z-a-test" hook:atclone-110 za-test-handler za-test-help-null-handler "notest|test''" # register a new ice-mod: test''

# Register atpull hook
@zi-register-annex "z-a-test" hook:atpull-110 za-test-handler za-test-help-null-handler
