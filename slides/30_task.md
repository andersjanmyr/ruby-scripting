!SLIDE commandline
# Task  `purge`
## Recursively removes backup files
### (such as tapir.rb.bak, tapir.rb~)

    $ purge /tmp
    Removed files:
    /tmp/anders/tapir.rb.bak
    /tmp/tapir.rb~


!SLIDE commandline
# Task  `head`
## List the first n lines of a file

    $ head -6 README.md 
    My script and dotfiles.

    To initiate on a new machine

    * git clone bin-and-dotfile ~/bin
    * ~/bin/setup_dotfiles

