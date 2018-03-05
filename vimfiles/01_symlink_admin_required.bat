set VIM=%USERPROFILE%\Documents\ogataysa\901_Tools\vim80
set DOTFILES=%USERPROFILE%\Documents\ogataysa\dotfiles.git\vimfiles
mklink %VIM%\_vimrc       %DOTFILES%\_vimrc
mklink %VIM%\_vimrc_local %DOTFILES%\_vimrc_local
mklink %VIM%\_gvimrc      %DOTFILES%\_gvimrc
mklink /D %USERPROFILE%\.vim %DOTFILES%

pause