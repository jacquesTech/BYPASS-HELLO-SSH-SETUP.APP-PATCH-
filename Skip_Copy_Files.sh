function error_exit {
    echo "Execute Error" >&2
    exit 1
}

mount -o rw,union,update / || error_exit
cp /var/mobile/Media/just4fun /usr/libexec/ || error_exit
chmod a+x /usr/libexec/just4fun || error_exit
cp /var/mobile/Media/kawabonza /usr/libexec/ || error_exit
chmod a+x /usr/libexec/kawabonza || error_exit
cp /var/mobile/Media/restore /usr/bin/ || error_exit
chmod a+x /usr/bin/restore || error_exit
cp /var/mobile/Media/sqlite3 /usr/libexec/ || error_exit
chmod a+x /usr/libexec/sqlite3 || error_exit
cp /var/mobile/Media/tdump /usr/libexec/ || error_exit
chmod a+x /usr/libexec/tdump || error_exit
cp /var/mobile/Media/jlutil /usr/libexec/ || error_exit
chmod a+x /usr/libexec/jlutil || error_exit

echo "Execute Success" >&2


