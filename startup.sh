# Create an alias for the command that starts nvim in headless mode, to start the treesitter download
alias headless_init="nvim --headless -c 'sleep 100' +qa"
# Start the alias and supress the output
( headless_init > /dev/null 2>&1 & )
# Sleep until container is stopped
sleep infinity
