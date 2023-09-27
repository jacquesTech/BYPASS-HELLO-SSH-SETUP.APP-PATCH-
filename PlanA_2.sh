function error_exit {
    echo "Execute Error" >&2
    exit 1
}

mount -o rw,union,update / || error_exit
echo \" >> /.mount_rw || error_exit
mv /Applications/Setup.app /Applications/Setup.app.crae || error_exit
uicache -a || error_exit
killall backboardd || error_exit

echo "Execute Success" >&2