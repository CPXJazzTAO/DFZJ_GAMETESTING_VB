# -
基于vb通过调用adb命令连接手机实现巅峰战舰常规刷取

免责声明：本脚本仅闲暇时开发，仅供学习使用，禁止用作商用

设备参数：
手机端：
分辨率：1080*2376
DPI:480
DP:360
电脑端：
系统：windows 10 专业版

1. ADB 安装
打开 Android 开发者中国，选择你的平台进行 ADB 的下载，地址：https://developer.android.google.cn/?hl=zh-cn

下载完成后，把 ADB 解压到一个你知道的路径

win+r 运行 control.exe 打开控制面板，然后进入系统与安全 - 系统 - 高级系统设置

点击”环境变量“

找到”系统变量“下面的 Path，点击编辑

点击”新建“，然后输入你刚刚解压 adb 的目录 platform-tools 的路径

一路确定，然后退出控制面板。win+r 打开 cmd，输入 adb --version，如果有弹出类似以下信息则说明安装成功

Android Debug Bridge version 1.0.41
Version 34.0.5-10900879
Installed as E:\ADB_SDK-Device\platform-tools\adb.exe
Running on Windows 10.0.19045

2.手机打 ADB 驱动（部分手机需要这一步）

win+i 打开设置（以下为 win10 操作），打开更新与安全-恢复-立即重新启动

等他重启，然后选择“疑难解答”

选择“启动设置”

点击“重启”

选择“禁用驱动程序强制签名”，然后回车

等待电脑重启完成，然后掏出自己咸置（自己在用的也可以）的安卓，把它关机，使用数据线连上电脑，最后进入 fastboot（一般是按电源+音量下键），待手机显示 fastboot 即可

右键开始键，选择设备管理器，其他设备，找到你的手机，一般是 Android，但有些手机可能不一样。你可以把手机拔了看哪一个项消失了，那个就是手机。右键更新驱动程序

选择“浏览我的计算机”

下载 ADB 驱动，然后解压到一个目录，打开刚刚那个页面，把默认的目录替换成刚刚解压的那个目录

选择“始终安装此驱动程序软件”

最后点关闭。win+r 打开 cmd，输入 fastboot devices，如果有提示以下类型信息说明驱动打好了

****Fastboot

输入 fastboot reboot 将手机重启至正常状态，然后按照这个教程打开手机的 usb 调试，输入 adb devices，手机上勾选允许调试，直到显示以下结果

****devices

3.将文件“main.bat”下载下来，连接手机，打开测试软件，调整手机分辨率为上文值后双击运行“main.bat”文件即可
  若无法调整手机分辨率可采取更改脚本坐标数值、使用模拟器等方式完成

参考文章：https://blog.csdn.net/raspi_fans/article/details/126152400



Based on VB and by calling ADB command to connect the phone, this script realizes the regular brushing of “Pinnacle Battleship”.

Disclaimer: This script is developed only during leisure time and is only for learning purposes. Commercial use is prohibited.

Device parameters:
Mobile End:
Resolution: 1080 * 2376
DPI: 480
DP: 360
PC end:
System: Windows 10 Professional Edition

1. ADB installation
Open Android Developers China, select your platform to download ADB, address: https://developer.android.google.cn/?hl=en-US
After the download is complete, extract ADB to a path you know

Win+R to run control.exe to open the Control Panel, then go to System and Security - System - Advanced System Settings

Click “Environment Variables”

Find “Path” under “System Variables” and click “Edit”

Click “New” and then enter the path of the platform-tools directory of the adb you just extracted

Confirm all the way, and then exit the Control Panel. Win+R opens CMD, enter the adb --version command, and if a pop-up similar to the following information appears, the installation is successful

Android Debug Bridge version 1.0.41
Version 34.0.5-10900879
Installed as E:\ADB_SDK-Device\platform-tools\adb.exe
Running on Windows 10.0.19045

2.Mobile phone ADB driver (required for some mobile phones)
Win+I opens the settings (below is the win10 operation), open update and security-recovery-restart now

After waiting for it to restart, select “Troubleshoot”

Select “Startup Settings”

Click “Restart”

Select “Disable driver signature enforcement” and press Enter

Wait for the computer to restart, then take out your Android phone (you can also use the one you are using), turn it off, connect it to the computer using a data cable, and finally enter fastboot (usually press power + volume down) Wait for the phone to show fastboot

Right-click the Start button, select Device Manager, Other Devices, find your phone, usually Android, but some phones may be different. You can unplug the phone and see which item disappears. That is the phone. Right-click Update Driver Software

Choose “Browse my computer”

Download the ADB driver, then extract it to a directory, open the page just now, and replace the default directory with the one just extracted

Select “Always install this driver software”

Finally, click Close. Win+R opens CMD, enter fastboot devices, if there is a prompt with the following type of information, the driver is installed successfully

****Fastboot

Enter fastboot reboot to restart the phone to the normal state, and then follow this tutorial to open the USB debugging of the phone. Enter adb devices, select “Allow debugging” on the phone, until the following results are displayed

****devices

3.Download the file “main.bat”, connect the phone, open the test software, adjust the phone resolution to the value mentioned above, and double-click the “main.bat” file to run it
If the mobile phone resolution cannot be adjusted, you can change the script coordinate values or use an emulator to complete it.
Reference article: https://blog.csdn.net/raspi_fans/article/details/126152400
