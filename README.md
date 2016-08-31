# Vim configuratie

Vim configuratie van Dirk.

# Installeren

```bash
# ga naar de home directory
cd 
# download vim configuratie
git clone https://github.com/dirk2011/vim.git .vim
# Maak de volgende koppelingen aan.
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

Vervolgens `ctags` installeren.
```bash
sudo apt-get install exuberant-ctags
```


In de home directory `ctags` configureren voor MarkDown. Maak het bestand
`.ctags` aan, en vul dat met het volgende.
```bash
--langdef=markdown
--langmap=markdown:.md
--regex-markdown=/^#[ \t]+(.*)/-\1/h,heading1/
--regex-markdown=/^##[ \t]+(.*)/-  \1/h,heading2/
--regex-markdown=/^###[ \t]+(.*)/-    \1/h,heading3/
--regex-markdown=/^####[ \t]+(.*)/-      \1/h,heading4/
--regex-markdown=/^#####[ \t]+(.*)/-        \1/h,heading5/
--regex-markdown=/^######[ \t]+(.*)/-          \1/h,heading6/
--regex-markdown=/^#######[ \t]+(.*)/-            \1/h,heading7/
```

