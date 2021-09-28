#!/usr/bin/env bash
username=""
email=""

global_git_config() {
    echo "global git config"
    git config --global user.name "$username"
    git config --global user.email "$email"
    git config --global init.defaultBranch master
}

generate_ssh_key() {
    echo "generate new ssh keys"
    ssh-keygen -t ed25519 -C "$email"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    cat ~/.ssh/id_ed25519.pub
}

while [[ $1 = -?* ]]; do
    case $1 in
        -u|--username) shift; username=${1} ;;
        -e|--email) shift; email=${1} ;;
        *) exit ;;
  esac
  shift
done

if [[ $username == "" ]]; then
    echo "can't have an empty username"
    exit
fi

if [[ $email == "" ]]; then
    echo "can't have an empty email"
    exit
fi

global_git_config
generate_ssh_key