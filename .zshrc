export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/bin/aws_completer:$PATH"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/opt/homebrew/bin/aws_completer' aws
