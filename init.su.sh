#!/system/bin/sh

# Detect superuser and start daemon if found

# SuperSU by Chainfire
grep -q chainfire /system/xbin/su >/dev/null
if [ $? -eq 0 ]; then
    /system/xbin/daemonsu --auto-daemon &
    exit 0
fi

# Superuser by Koushik Dutta
grep -q koushik /system/xbin/su >/dev/null
if [ $? -eq 0 ]; then
    /system/xbin/su --daemon &
    exit 0
fi

# Either this is the standard su or the package is not recognized
exit 0
