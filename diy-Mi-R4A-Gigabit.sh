#!/bin/sh
#修改登录IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
#修改主机名
sed -i 's/OpenWrt/Xiaomi-Router/g' package/base-files/files/bin/config_generate
#修改型号显示
sed -i 's/Xiaomi Mi Router 4A Gigabit Edition/Xiaomi 4A Gigabit/g' target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit.dts
sed -i 's/Xiaomi Mi Router 3G v2/Xiaomi 3G v2/g' target/linux/ramips/dts/mt7621_xiaomi_mi-router-3g-v2.dts
#修改固件大小、复制闪存布局文件
sed -i '/Device\/xiaomi_mi-router-4a-gigabit/,/Mi Router 4A/ s/14848k/16064k/' target/linux/ramips/image/mt7621.mk
sed -i '/Device\/xiaomi_mi-router-3g-v2/,/mir3g-v2/ s/14848k/16064k/' target/linux/ramips/image/mt7621.mk
cp -rf ~/XiaoMi-R4A-Gigabit/mt7621_xiaomi_mi-router-4a-3g-v2.dtsi ~/openwrt/target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-3g-v2.dtsi
