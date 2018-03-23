set VIM=%USERPROFILE%\Documents\001_Software\vim80
set DOTFILES=%USERPROFILE%\Documents\dotfiles.git\vimfiles
mklink %VIM%\_vimrc       %DOTFILES%\_vimrc
mklink %VIM%\_vimrc_local %DOTFILES%\_vimrc_local
mklink %VIM%\_gvimrc      %DOTFILES%\_gvimrc
mklink /D %USERPROFILE%\.vim %DOTFILES%

pause