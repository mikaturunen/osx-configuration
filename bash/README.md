# Assumptions / installed software for the above .bash_profile to fully function

Install bash completion and docker specific completions

```
# bash

brew install bash-completion
brew tap homebrew/completions
curl -XGET https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker > `brew --prefix`/etc/bash_completion.d/docker

# "Everything works on next login"
```
