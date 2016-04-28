#--- GENERAL BETTER TERMINAL USE CASES WITH PRETTY COLORS AND SUCH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


#--- ALIAS COMMANDS
# Starts docker-machine and connects to given docker machine
alias start-docker-machine="docker-machine start && docker-machine env && eval $(docker-machine env)"
# Kill all running containers.
alias docker-kill-all='docker kill $(docker ps -q)'
# Delete all stopped containers.
alias docker-clean-containers='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
# Delete all untagged images.
alias docker-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
# Delete all images
alias docker-clean-images-all='printf "\>>> Deleting ALL images\n\n" && docker rmi -f $(docker images -q)'
# Delete all stopped containers and untagged images.
alias docker-clean='docker-clean-containers || true && docker-clean-images'
# list all images and running containers
alias docker-list='docker images && docker ps -a'
# Kill container and remove it
alias docker-nuke='function _docker_nuke(){ docker kill $1; docker rm $1; };_docker_nuke'
# Adds route to ip tables if it goes bonkers
alias docker-route='sudo route -nv add -net 192.168.99 -interface vboxnet0'

