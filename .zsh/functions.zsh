
# functions

# create a new directory and enter it
mkd() {
  mkdir -p "$@" && cd "$@"
}
