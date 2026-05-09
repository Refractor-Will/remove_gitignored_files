# https://gist.github.com/jeffjohnson9046/80bc182db7ae2f4a6150
git ls-files -ci --exclude-standard
git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached
git commit -am "Removed unwanted files marked in .gitignore"