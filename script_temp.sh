function error_exit {
    echo "Execute Error" >&2
    exit 1
}

udid=9684229af46710f58e22743ba8b04c30c0c3a113
/usr/libexec/just4fun "${udid}" || error_exit

echo "Execute Success" >&2