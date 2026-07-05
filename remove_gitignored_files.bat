@echo off

:: https://gist.github.com/jeffjohnson9046/80bc182db7ae2f4a6150

git ls-files -ci --exclude-standard

:: Remove the unwanted files: 
FOR /F "tokens=*" %%G IN ('git ls-files -ci --exclude-standard') DO git rm --cached "%%G"

:: Commit changes
git commit -m "Removed unwanted files marked in .gitignore"
