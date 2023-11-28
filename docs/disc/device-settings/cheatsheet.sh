# @summary
# quick command to find an ip formation using public API
# @usage
# ip <IPv4 address>
def ip() {
    IP=$1
    curl https://ipinfo.io/$IP/json
}

# TODO: update cheatsheet

alias hint-network="echo '
# tcpdump
tcpdump -ni any port $PORT

# DNS
on device

# netcat
nc -l $PORT
nc -zvn IP PORT
'"

# https://stackoverflow.com/questions/36957606/linux-cd-to-folder-containing-the-file
function cd() {
    if [ $# -eq 0 ] ; then
        # no arguments
        builtin cd
    elif [ -d $1 ] ; then
        # argument is a directory
        builtin cd "$1"
    else
        # argument is not a directory
        builtin cd "$(dirname $1)"
    fi
}