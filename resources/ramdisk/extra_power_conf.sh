#!/system/bin/sh

bootcomplete=`getprop dev.bootcomplete`
if [ -z "$bootcomplete" ]; then
    extra_power_config=`getprop persist.sys.acer.ext_pow_conf`
    if [ -n "$extra_power_config" ]; then
        echo "$extra_power_config" > /sys/dev-power_mode/power_mode
    fi
fi

