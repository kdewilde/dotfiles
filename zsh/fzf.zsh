# fb - checkout git branch
fb() {
    local branches branch
    # -r = remote branches
    # --sort = -committerdate (reverse commit date)
    branches=$(git --no-pager branch -vv -r --sort=-committerdate) &&
    branch=$(echo "$branches" | fzf +m -e --no-sort) &&
    correct_branch=$(echo "$branch" | awk '{print $1}' | sed "s/.* //" | sed "s/origin\///") &&
    echo ": `date +%s`:0; git checkout $correct_branch" >> ~/.zsh_history
    git checkout $(echo "$correct_branch")
}

# vf - fuzzy open with vim from anywhere
# ex: vf word1 word2 ... (even part of a file name)
# zsh autoload function
vf() {
    local files

    files=(${(f)"$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"})

    if [[ -n $files ]]
    then
        vim -- $files
        print -l $files[1]
    fi
}
