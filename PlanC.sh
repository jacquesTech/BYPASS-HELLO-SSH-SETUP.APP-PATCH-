function error_exit {
    echo "Execute Error" >&2
    exit 1
}

mount -o rw,union,update / || error_exit
cp /var/mobile/Media/bypass6 /usr/libexec/ || error_exit
mv /usr/libexec/mobileactivationd /usr/libexec/mobileactivationdbak || error_exit
mv /usr/libexec/bypass6 /usr/libexec/mobileactivationd || error_exit
chmod 755 /usr/libexec/mobileactivationd || error_exit
launchctl unload /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist || error_exit
launchctl load /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist || error_exit
killall backboardd || error_exit

echo "Execute Success" >&2


