Create a global ignore file

echo "tags" >> ~/.global_ignore
git config --global core.excludesfile $HOME/.global_ignore
