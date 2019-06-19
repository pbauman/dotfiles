if [ -f /opt/local/share/git/git-prompt.sh ]; then
    . /opt/local/share/git/git-prompt.sh
fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f /opt/local/share/git/contrib/completion/git-completion.bash ]; then
   . /opt/local/share/git/contrib/completion/git-completion.bash
fi

# Basic PATH/MANPATH setup
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/local/bin
export MANPATH=/usr/share/man:/usr/local/share/man:/usr/X11R6/man:/usr/local/man

# Add mysql
export PATH=/usr/local/mysql/bin:$PATH
export MANPATH=/usr/local/mysql/man:$MANPATH

# Add macports 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
MANPATH=/opt/local/share/man:$MANPATH

# Prefer TexLive install vs. Macports LaTeX
#export PATH=/Library/TeX/Distributions/Programs/texbin:$PATH

# Software stack
source .bashrc_ubceslab_pbauman_laptop_init
source .bashrc_ubceslab_modules

export GIT_EDITOR=vim
export SVN_EDITOR=vim

# Helpful commands for interfacing with non-BSD linux scripts
export PYTHON=/opt/local/bin/python2.7
export LN=/opt/local/bin/gln
export LS=/opt/local/bin/gls
export SED=/opt/local/bin/gsed

# Pretty terminal syntax highlighting
if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto'
    eval `/opt/local/bin/gdircolors ~/.dir_colors`
fi

# Add LaTeX
#LATEX_PATH=/usr/texbin
#export PATH=$LATEX_PATH:$PATH

# Smarter history searching
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

#Aliases
alias ls="$LS $LS_OPTIONS -v"
alias ll="$LS $LS_OPTIONS -vl"
alias lla="$LS $LS_OPTIONS -vla"
alias llt="$LS $LS_OPTIONS -vltr"

alias cdw="cd /Users/pbauman/work"

export PS1='[\T][\u@\h:\w]$(__git_ps1 "[%s]")\$ '

export OPENBLAS_NUM_THREADS=1

alias base_load="module load gcc openblas mpich"
alias loadlibmesh="module load gcc openblas mpich petsc hdf5 boost vtk cppunit"
alias loadgrins="loadlibmesh; module load libmesh cantera gsl antioch"

alias atreides="ssh -X atreides.ices.utexas.edu"

alias lonestar="ssh lonestar.tacc.utexas.edu"
alias maverick="ssh maverick.tacc.utexas.edu"
alias stampede="ssh stampede.tacc.utexas.edu"

alias fry="ssh fry"
alias leela="ssh -X leela.eng.buffalo.edu"
alias bender="ssh -X bender.eng.buffalo.edu"
alias zoidberg="ssh -X zoidberg.eng.buffalo.edu"
alias hermes="ssh -X hermes.eng.buffalo.edu"
alias femputer="ssh femputer.eng.buffalo.edu"

alias ccr="ssh vortex.ccr.buffalo.edu"

# Force MacPorts Octave to run in the terminal
alias octave="octave --no-gui-libs"

alias srcgrep="find . -iname '*.C' -or -iname '*.cpp' -or -iname '*.c' -or -iname '*.cc'\
                    -or -iname '*.hpp' -or -iname '*.h' \
                    -or -iname '*.F90' -or -iname '*.f90' \
                    -or -iname '*.F' -or -iname '*.f' | xargs grep"

alias texgrep="find . -iname '*.tex' | xargs grep"

alias dirsize="du -ch | egrep '^\s+?([0-9]+\.?[0-9]+?[G]|[789][0-9]{2}[M])'"
