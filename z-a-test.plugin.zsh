# According to the Zsh Plugin Standard:
# http://z-shell.github.com/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz →zp-test-handler …zp-test-make-targets

# An empty stub to fill the help handler fields
→za-test-help-null-handler() { :; }

# Register atclone hook
@zi-register-annex "z-a-test" hook:atclone-110 \
    →zp-test-handler \
    →za-test-help-null-handler \
    "notest|test''" # register a new ice-mod: test''

# Register atpull hook
@zi-register-annex "z-a-test" hook:atpull-110 \
    →zp-test-handler \
    →za-test-help-null-handler
