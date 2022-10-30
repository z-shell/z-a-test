# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
#
# Standardized $0 Handling
# https://z.digitalclouds.dev/community/zsh_plugin_standard#zero-handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Functions directory
# https://wiki.zshell.dev/community/zsh_plugin_standard#funtions-directory
if [[ $PMSPEC != *f* ]] {
    fpath+=( "${0:h}/functions" )
}

# The Proposed Function-Name Prefixes
# https://wiki.zshell.dev/community/zsh_plugin_standard#the-proposed-function-name-prefixes
autoload -Uz →za-test-handler →za-test-make-targets

# An empty stub to fill the help handler fields
→za-test-help-null-handler() { :; }

# Register atclone hook
@zi-register-annex "z-a-test" hook:atclone-110 \
  →za-test-handler \
  →za-test-help-null-handler "notest|test''" # register a new ice-mod: test''

# Register atpull hook
@zi-register-annex "z-a-test" hook:atpull-110 \
  →za-test-handler \
  →za-test-help-null-handler

# vim: ft=zsh sw=2 ts=2 et
