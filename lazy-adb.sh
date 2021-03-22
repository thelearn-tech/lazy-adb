
#!/bin/bash

# All function
one_function() {
	clear
	echo ""
	printf '\033[36m';echo "  ADB Debugging"
 echo ""
 printf '\033[32m';echo " adb devices"
 echo " adb forward"
 echo " adb kill-server"
 echo ""
 printf '\033[36m';echo " Wireless"
 echo ""
 printf '\033[32m';echo " adb connect"
 echo " adb usb"
 echo ""
 printf '\033[36m';echo " Package Management"
 echo ""
 printf '\033[32m';echo " adb install"
 echo " adb uninstall"
 echo " adb shell pm list packages"
 echo " adb shell pm path"
 echo " adb shell pm clear"
 echo ""
 printf '\033[36m';echo " File Management"
 echo ""
 printf '\033[32m';echo " adb pull"
 echo " adb push"
 echo " adb shell ls"
 echo " adb shell cd"
 echo " adb shell rm"
 echo " adb shell mkdir"
 echo " adb shell touch"
 echo " adb shell pwd"
 echo " adb shell cp" 
 echo " adb shell mv"
 echo ""
 printf '\033[36m';echo " Network"
 echo ""
 printf '\033[32m';echo " adb shell netstat"
 echo " adb shell ping <ip>"
 echo " adb shell ip"
 echo " adb shell netfg"
 echo ""
 printf '\033[36m';echo " Logcat"
 echo ""
 printf '\033[32m';echo " adb logcat"
 echo " adb shell dumpsys"
 echo " adb shell dumpstate"
 echo ""
 printf '\033[36m';echo " Sreenshot"
 echo ""
 printf '\033[32m';echo " adb sell screencap"
 echo " adb shell screenrecord"
 echo ""
 printf '\033[36m';echo " System"
 echo ""
 printf '\033[32m';echo " adb root"
 echo " adb sideload"
 echo " adb shell ps"
 echo " adb shell top"
 echo " adb shell getprop"
 echo " adb ahell setprop"
 echo ""
 echo "99)Back"
 echo ""
 
 read -p " E.ADB> " inputback1
}  

    
two_function() {
	clear
	adb devices
	echo ""
    printf '\033[32m';echo "99)Back"
    echo ""
	read -p " E.ADB> " inputback2   
}    


three_function() {
	clear
	adb shell
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback3
}

four_function() {
	clear
	read -p "type ip address:port> " ipport
	echo ""
	adb connect $ipport
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback4
}

five_function() {
   clear
	adb shell netstat
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback5
}
   
   
   
six_function() {   
    clear
	read -p "type ip address> " ip
	echo ""
	adb shell ping $ip
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback6
}

seven_function() {
   clear
	adb shell logcat
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback7
}

eight_function() {
	clear
	adb shell top
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	read -p " E.ADB> " inputback8
}

nine_function() {
	clear
	adb kill-server >> /dev/null
	echo ""
	sleep 1.5
	printf '\033[36m';echo "adb server killed"
	echo ""
	printf '\033[32m';echo "99)Back"
	echo ""
	sleep 1.8
	read -p " E.ADB> " inputback9
}

# Banner
banner_loop() {
 printf '\033[32m';echo ""
 printf '\033[32m';echo " __         ______     ______     __  __     "  
 printf '\033[32m';echo "/\ \       /\  __ \   /\___  \   /\ \_\ \     " 
 printf '\033[32m';echo "\ \ \____  \ \  __ \  \/_/  /__  \ \____ \     "
 printf '\033[32m';echo " \ \_____\  \ \_\ \_\   /\_____\  \/\_____\     "
 printf '\033[32m';echo "  \/_____/   \/_/\/_/   \/_____/   \/_____/  "
 printf '\033[32m';echo ""
 printf '\033[32m';echo "     ______     _____     ______    "
 printf '\033[32m';echo "    /\  __ \   /\  __-.  /\  == \   "
 printf '\033[32m';echo "    \ \  __ \  \ \ \/\ \ \ \  __<    \033[33m  v1.0"
 printf '\033[32m';echo "     \ \_\ \_\  \ \____-  \ \_____\   \033[36m by thelearn-tech"
 printf '\033[32m';echo "      \/_/\/_/   \/____/   \/_____/   \033[31m ©2021"
  echo  ""
  echo  ""
 printf '\033[32m';echo " 1)ADB Commands list"
 printf '\033[32m';echo " 2)ADB Devices"
 printf '\033[32m';echo " 3)ADB Shell "
 printf '\033[32m';echo " 4)ADB connect "
 printf '\033[32m';echo " 5)ADB shell netstat "
 printf '\033[32m';echo " 6)ADB shell ping    "
 printf '\033[32m';echo " 7)ADB logcat  "
 printf '\033[32m';echo " 8)ADB shell top"
 printf '\033[32m';echo " 9)ADB kill server" 
 printf '\033[32m';echo " 00)Exit"
 echo ""
 echo ""

}

# read function
read_walla_function() {
	read -p "E.ADB> " inputlol
}

banner_loop
read_walla_function


# main input function
case $inputlol in 
 1)
  clear
  one_function
 ;;
 2)
  two_function
 ;;
 3)
  three_function
 ;;
 4)
  four_function
 ;;
 5)
  five_function
 ;;
 6)
   six_function
 ;;
 7)
   seven_function
 ;;
 8)
   eight_function
;;
9)
  nine_function
;;
 00)
  sleep 0.7
  exit 1
 ;;
 *)
  clear
  sleep 1
  echo ""
  printf '\033[31m';echo " wrong command"
  sleep 2
  clear
  ./lazy-adb.sh
  exit 1
 ;;
 esac
 
 
 
# All back function

# 1
  case $inputback1 in
 99)
 clear
 ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
;;
esac
# 2
case $inputback2 in
99)
 clear
 ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
;;
esac
# 3
case $inputback3 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
;;
esac
# 4
case $inputback4 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
# 5
case $inputback5 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
# 6
case $inputback6 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
# 7
case $inputback7 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
# 8
case $inputback8 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
# 9
case $inputback9 in
99)
   clear 
   ./lazy-adb.sh
 exit 1
;;
*)
 clear
 ./lazy-adb.sh
 exit 1
 ;;
esac
