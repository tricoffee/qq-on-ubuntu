#  [转载自] : http://www.jianshu.com/p/31de4b15b347  作者 大明白


# 编译安装libimobiledevice

# 在windows上大家可以使用iTunes来与iPhone进行通信，但是Linux上没有这类的官方软件，
# 所以一些爱好者就破解了iTunes的通信协议，然后在Linux上实现了该协议，也就是libimobiledevice啦~~

# 下面为大家介绍Ubuntu下如何编译libimobiledevice


# 准备环境

	#	sudo apt-get install build-essential automake autoconf git cmake pkg-config libtool


# 安装libplist

	#	sudo apt-get install libxml2-dev python-dev python-pip
	#	sudo pip install cython
	#	cd ~/Github
	#	git clone https://github.com/libimobiledevice/libplist.git
	#	cd libplist
	#	./autogen.sh
	#	make
	#	sudo make install
	#	cd ~/Github


# 安装libusbmuxd

	#	cd ~/Github
	#	git clone https://github.com/libimobiledevice/libusbmuxd.git
	#	cd libusbmuxd
	#	./autogen.sh
	#	make
	#	sudo make install
	#	cd ~/Github


# 安装libimobiledevice

	#	cd ~/Github
	#	git clone https://github.com/libimobiledevice/libimobiledevice.git
	#	cd libimobiledevice
	#	./autogen.sh
	#	make
	#sudo make install
	#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
	#cd ~/Github


# 安装usbmuxd

	cd ~/Github
	sudo apt-get install libusb-dev libusb-1.0-0-dev
	git clone http://git.sukimashita.com/usbmuxd.git
	cd usbmuxd
	./autogen.sh
	make
	sudo make install
	cd ~/Github


# 安装ideviceinstaller

	cd ~/Github
	sudo apt-get install libzip-dev
	git clone https://github.com/libimobiledevice/ideviceinstaller.git
	cd ideviceinstaller
	./autogen.sh
	make
	sudo make install
	cd ~/Github


# 安装ifuse

	cd ~/Github
	sudo apt-get install libfuse-dev
	git clone https://github.com/libimobiledevice/ifuse.git
	cd ifuse
	./autogen.sh
	make
	sudo make install
	cd ~/Github


# 各种命令

	# ideviceinfo


# idevicediagnostics

	# 休眠 idevicediagnostics sleep

	# 关机 idevicediagnostics shutdown

	# 重启 idevicediagnostics restart


# ideviceinstaller

	# 列出用户安装的 ideviceinstaller -l -o list_user

	# 卸载 ideviceinstaller -u com.baidu.map

	# 安装 ideviceinstaller -i xxx.ipa

	# idevicedate

	# 显示log idevicesyslog


# [end]
