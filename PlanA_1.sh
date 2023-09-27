function error_exit {
    echo "No ByPasser" >&2
    exit 1
}

ls /Applications/Setup.app.crae || error_exit

echo "Done ByPasser" >&2