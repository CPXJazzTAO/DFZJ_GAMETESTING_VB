chcp 65001
@echo off 
echo 脚本名称[main]
echo 作者[Marazj]
echo 创建日期[2023/11/28 22:45:08]


%循环，51位置即为循环次数%
set n=0
:n
set /a n+=1
If %n%==51 goto  nn
echo 第 %n% 次循环


echo 延时3秒
choice /t 3 /d y /n >nul 


adb -s AVCCUT1A19003761	 shell input tap 2250 1000
echo 点击：2250 1000

echo 延时3秒
choice /t 5 /d y /n >nul 

adb -s AVCCUT1A19003761	 shell input tap 400 600
echo 点击：400 600

echo 延时3秒
choice /t 3 /d y /n >nul 



echo 延时90秒
choice /t 90 /d y /n >nul 

adb -s AVCCUT1A19003761	 shell input tap 424 745
echo 点击：424 745

echo 延时3秒
choice /t 5 /d y /n >nul 

adb -s AVCCUT1A19003761	 shell input tap 424 745
echo 点击：424 745

echo 延时3秒
choice /t 3 /d y /n >nul 





echo 延时480秒
choice /t 480 /d y /n >nul 

adb -s AVCCUT1A19003761	 shell input tap 2050 55
echo 点击：2050 55

echo 延时3秒
choice /t 5 /d y /n >nul 

adb -s AVCCUT1A19003761	 shell input tap 2300 30
echo 点击：2300 30

echo 延时3秒
choice /t 5 /d y /n >nul 



goto n
:nn

/