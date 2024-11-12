IP=$(adb devices | head -n 2 | tail -n 1 | awk "{print \$1}") && adb -s "$IP" shell pm list packages -3 | sort | awk -F "package:" '{print $2}' | parallel --keep-order --bar 'echo {}'  > pkg.txt && wc -l pkg.txt
#install ncurses-utils command line tool
        pkg install ncurses-utils -y
        #install gum command line tool 
        pkg install gum -y
        width=$(tput cols)
        gum style "adb package installed" --height 1 --width "$width" --bold --align center
        sleep 1s
        gum style "ncurses-utils package installed" --height 1 --width "$width" --bold --align center
        sleep 1s
       