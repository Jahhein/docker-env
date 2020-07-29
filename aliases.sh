# docker env aliases

#  cd
alias ..='cd ../'                   # Go back 1 directory level
alias ...='cd ../../'               # Go back 2 directory levels
alias .3='cd ../../../'             # Go back 3 directory levels
alias .4='cd ../../../../'          # Go back 4 directory levels
alias .5='cd ../../../../../'       # Go back 5 directory levels
alias .6='cd ../../../../../../'    # Go back 6 directory levels

#  ls
alias ls='ls -a --group-directories-first '
#alias l='ls --sort extension '
alias l='ls -l -g '
alias la='ls --oneline --reverse --classify '
alias ll='ls --long --header --links --reverse --binary --classify '
alias lall='ll --extended --group '
alias lg='ll --git --git-ignore '         # ll with git statuses

alias lcol='ls --across --sort extension '
alias ldots='ls -ld .* '            # list all dotfiles
alias tree='ls -lT '                # tree
unalias ls

#  files & management
alias qfind='find . -name '  # Search for file
alias cp='cp -irpv '         # Copy: verbose and check for copies, recursive.
alias mv='mv -iv '           # Move: verbose and check for copies
alias mkdir='mkdir -pv '     # Make directory: verbose, makes sub-directories.

alias rm='rm -v '            # Remove: verbose
alias rmall='\rm -rf '       # Remove all files & directories, verbosely.
alias rmEmptyDirs='find . -empty -type d -delete' # Remove empty dirs from current and sub dirs.

alias numFiles="echo $(ls -1 | wc -l)" # Number of non-dotfiles in directory

alias chownCurrentUser="sudo chown -Rv $(whoami) "

#  security
alias sudo='sudo '  # Enable aliases to be sudo’ed

command -v hd > /dev/null || alias hd="hexdump -C"
command -v md5sum > /dev/null || alias md5sum="md5"      # macOS has no `md5sum`
command -v sha1sum > /dev/null || alias sha1sum="shasum" # macOS has no `sha1sum`

#  diagnostics (cpu, memory)
# Recommended 'top' invocation to minimize resources
alias ttop='top -R -F -s 10 -o rsize'
alias topForever='top -l 9999999 -s 10 -o cpu'

alias htop='sudo htop'

alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

alias shutdown='sudo shutdown '
alias reboot='sudo reboot '

#  quick edits & editors
export EDITOR='vim '
alias e-="${EDITOR} "
alias econfigs="${EDITOR} "
alias ealiases="${EDITOR} $HOME/.aliases"

#  grep
alias grep='grep --color=auto '
alias ggrep='ggrep --color=auto '
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto '

#  rsync
alias rsync-copy='rsync -avz --progress -h'
alias rsync-move='rsync -avz --progress -h --remove-source-files'
alias rsync-update='rsync -avzu --progress -h'
alias rsync-synchronize='rsync -avzu --delete --progress -h'

# misc
alias reload="exec $SHELL -l"       # Reload shell
alias aliases='alias '              # I always type this
alias c='clear'                     # Clear terminal display
alias x='exit'                      # Exit terminal
alias ln='\ln -sfvi '               # Symlink, force, verbose
alias less='less -FSRXc'            # Less pipe
alias fix_stty='stty sane'          # Restore terminal configurations

alias where='type -Sf '            # Detailed location of command
alias whereis='type -Sf '          # Detailed location of command
alias which='type -Sf '            # Detailed location of command

alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias map="xargs -n1"

alias dateStamp='echo -n `date +"[%m.%d.%y--%H.%M.%S]"`'
alias timeStamp="dateStamp|pbcopy "
