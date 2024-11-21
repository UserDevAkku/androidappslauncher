echo -e "please wait for a while..."
pkg install git -y &>/dev/null
clear
printf "%s" "please pinch to adjust screen then enter:"
read input
if [[ -z "$input" ]]; then
    clear
    Terminated() {
        clear
        string=$(echo -e "installation has terminated" | tr '[:lower:]' '[:upper:]')
        echo -e "\033[1;93m$string\033[0m"
        # echo -en "\033[6n" 2>/dev/null
        # IFS="[;"
        # read -sdR _ ROW _
        # row=$(echo -e "$ROW") # saving the height  to row variable
        # splchar="[+][+]"
        # splchar="${#splchar}"
        # column=$(tput cols)
        # column=$((column - splchar + 1))    # column or width # simple text
        # length=${#string}                   # length of string.
        # position=$(((column - length) / 2)) # getting the new width=pos to center the text acc to the text
        # tput cup $row $position
        # echo -e "\033[1;97m[\033[0m\033[1;94m#\033[0m\033[1;97m]\033[0m\033[1;93m$string\033[0m\033[1;97m[\033[0m\033[1;94m#\033[0m\033[1;97m]\033[0m"
        exit
    }
    trap Terminated SIGINT
    pos() {
        echo -en "\033[6n" 2>/dev/null
        IFS="[;"
        read -sdR _ ROW _
        row=$(echo -e "$ROW") # saving the height  to row variable
        splchar="[+][+]"
        splchar="${#splchar}"
        column=$(tput cols)
        column=$((column - splchar))        # column or width # simple text
        length=${#string}                   # length of string.
        position=$(((column - length) / 2)) # getting the new width=pos to center the text acc to the text
        tput cup $row $position
    }
    pkg uninstall git -y &>/dev/null
    string=$(echo -e $"list of all required packages:" | tr '[:lower:]' '[:upper:]')
    echo -e "\033[1;38;5;111m▣\033[0m \033[1;38;5;184m$string\033[0m"
    printf "\n"
    #list of required packages
    title=$(echo -e $'ncurses-utils' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'gum' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'android-tools' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'aapt' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'whiptail' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'termux-api' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'parallel' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    title=$(echo -e $'git' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;111m$title\033[0m"
    printf "\n"
    packagesNOT() {
        printf "%s\n" $'\033[1;38;5;187m▣\033[0m \033[1;38;5;184mChecking availability of packages:\033[0m' | pv -qL 25
        printf "\n"
        sleep 2s
        command -v tput -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mncurses-utils\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mncurses-utils \033[1;92m✔\033[0m"
        fi
        command -v gum -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mgum\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mgum \033[1;92m✔\033[0m"
        fi
        command -v adb -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mandroid-tools\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mandroid-tools \033[1;92m✔\033[0m"
        fi
        command -v aapt -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187maapt\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187maapt \033[1;92m✔\033[0m"
        fi
        command -v whiptail -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mwhiptail\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mwhiptail \033[1;92m✔\033[0m"
        fi
        command -v termux-toast -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mtermux-api\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mtermux-api \033[1;92m✔\033[0m"
        fi
        command -v parallel -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mparallel\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mparallel \033[1;92m✔\033[0m"
        fi
        command -v git -y &>/dev/null
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "%s\n" $'\033[1;97m➤\033[0m \033[1;38;5;187mgit\033[0m \033[1;38;5;196m✗\033[0m '
        else
            echo -e "\033[1;97m➤\033[0m \033[1;38;5;187mgit \033[1;92m✔\033[0m"
        fi
    }
    packagesNOT
    packages() {
        (command -v tput &>/dev/null && command -v gum &>/dev/null && command -v adb &>/dev/null && command -v aapt &>/dev/null && command -v whiptail &>/dev/null && command -v termux-toast &>/dev/null && command -v &>/dev/null && command -v parallel &>/dev/null && command -v git &>/dev/null)
        status="$?"
        if [[ "$status" -eq 1 ]]; then
            printf "\n"
            printf "%s" $'\033[1;38;5;121m▣\033[0m \033[1;38;5;141mProceed to install required pkges:\033[0m' | pv -qL 25
            printf "%s\n" $'\033[1;96mENTER\033[0m'
            printf "\n"
            read -s input
            if [[ -z "$input" ]]; then
                command -v tput &>/dev/null # checking ncurses-utils
                status="$?"
                if [[ "$status" -eq 1 ]]; then
                    ping -c 1 google.com &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        echo -e "\033[0;90minstalling ncurses-utils\033[0m"
                        pkg install ncurses-utils -y &>/dev/null
                        status="$?"
                        if [[ "$status" -eq 0 ]]; then
                            printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mncurses-utils installed\033[0m \033[1;92m✔\033[0m'
                            sleep 1s
                        elif [[ "$status" -eq 1 ]]; then
                            echo -e "\033[1;97m◉\033[0m \033[96m\033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                        fi
                    else
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                fi
            fi
            #############
            command -v gum &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling gum\033[0m"
                    pkg install gum -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mgum installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v adb &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling android-tools\033[0m"
                    pkg install android-tools -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mandroid-tools installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v aapt &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling aapt\033[0m"
                    pkg install aapt -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187maapt installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v whiptail &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling whiptail\033[0m"
                    pkg install whiptail -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mwhiptail installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v termux-toast &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling termux-api\033[0m"
                    pkg install termux-api -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mtermux-api installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v parallel &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling parallel\033[0m"
                    pkg install parallel -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mparallel installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
            #############
            command -v git &>/dev/null # checking ncurses-utils
            status="$?"
            if [[ "$status" -eq 1 ]]; then
                ping -c 1 google.com &>/dev/null
                status="$?"
                if [[ "$status" -eq 0 ]]; then
                echo -e "\033[0;90minstalling git\033[0m"
                    pkg install git -y &>/dev/null
                    status="$?"
                    if [[ "$status" -eq 0 ]]; then
                        printf "%s\n" $'\033[1;97m◉\033[0m \033[1;38;5;187mgit installed\033[0m \033[1;92m✔\033[0m'
                        sleep 1s
                    elif [[ "$status" -eq 1 ]]; then
                        echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                    fi
                else
                    echo -e "\033[1;97m◉\033[0m \033[96mPLEASE CHECK YOUR INTERNET CONNECTION ●\033[0m"
                fi
            fi
        elif [[ "$status" -eq 0 ]]; then
            return
        fi
    }
    packages
    printf "\n"
    string=$(echo -e $"list of all required files:" | tr '[:lower:]' '[:upper:]')
    echo -e "\033[1;38;5;183m▣\033[0m \033[1;38;5;184m$string\033[0m"
    printf "\n"
    #list of required files
    title=$(echo -e $'package names' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;177m$title\033[0m"
    printf "\n"
    title=$(echo -e $'paths' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;177m$title\033[0m"
    printf "\n"
    title=$(echo -e $'labels' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;177m$title\033[0m"
    printf "\n"
    title=$(echo -e $'activities' | tr '[:lower:]' '[:upper:]')
    echo -e "[\033[1;38;5;156m+\033[0m]\033[1;38;5;177m$title\033[0m"
    printf "\n"
    files() {
        width=$(tput cols)
        gum style $'** \033[1;38;5;209mVISIT THIS LINK\033[0m **' --width "$width" --height 1 --bold --align center
        printf "\n"
        gum style $'\033[1;96mhttp://androidappslauncher.netlify.app/\033[0m' --width "$width" --height 1 --bold --align center
        printf "\n"
        gum style $'\033[1;96m↳\033[0m \033[1;94mENTER\033[0m -> \033[1;93mTYPE EXIT\033[0m -> \033[1;94mENTER\033[0m \033[1;96m↲\033[0m' --width "$width" --height 1 --bold --align center
        printf "\n"
        printf "%s" $'\033[1;38;5;154m▣\033[0m \033[1;38;5;168mproceed to install required files:\033[0m' | pv -qL 25
        printf "%s\n" $'\033[1;96mENTER\033[0m'
        read -s input
        if [[ -z "$input" ]]; then
            IP=$(adb devices &>/dev/null | head -n 2 | tail -n 1 | awk "{print \$1}") && adb -s "$IP" shell &>/dev/null
            status="$?"
            if [[ "$status" -eq 0 ]]; then
                printf "\n"
                width=$(tput cols)
                termux-vibrate
                gum style $'\033[1;38;5;83m 🤩 🤩 YOU ARE CONNECTED WITH ADB 🤩 🤩 \033[0m ' --width "$width" --height 1 --bold --align center
                sleep 3s
                parallel --citation 2>/dev/null
                #removing old files
                rm -rf pkg.txt && rm -rf act.txt && rm -rf label.txt && rm -rf path.txt
                #updated packages list
                IP=$(adb devices | head -n 2 | tail -n 1 | awk "{print \$1}") && adb -s "$IP" shell pm list packages -3 | sort | awk -F "package:" '{print $2}' | parallel --keep-order 'echo {}' >pkg.txt
                cat pkg.txt | parallel --bar --keep-order 'echo {}'
                printf "\n"
                gum style $'\033[1;92mPACKAGE NAME INSTALLED ✔\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                #updated paths list
                cat pkg.txt | parallel --keep-order 'IP=$(adb devices | head -n 2 | tail -n 1 | awk "{print \$1}") && adb -s $IP shell pm path {} |  awk -F "package:" "{print  \$2}"| head -n 1 ' | parallel --keep-order 'echo {}' >path.txt
                cat path.txt | parallel --bar --keep-order 'echo {}'
                printf "\n"
                gum style $'\033[1;92mPATHS INSTALLED ✔\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                #updated labels list
                cat path.txt | parallel --keep-order 'aapt dump badging {}| grep "application-label:"' 2>/dev/null | awk -F "'" '{print $2}' | parallel --keep-order 'echo {}' >label.txt
                cat label.txt | parallel --bar --keep-order 'echo {}'
                printf "\n"
                gum style $'\033[1;92mLABELS INSTALLED ✔\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                #updated activities list
                cat pkg.txt | parallel --keep-order 'IP=$(adb devices | head -n 2 | tail -n 1 | awk "{print \$1}") && adb -s $IP shell dumpsys package {} | grep -E -A 1 ".MAIN:|.launch:|.Main|.Default|.Gmail"| grep -E "/|\.LandingPage" | grep -E  -v  "[$]|Diwali|CricketAlias|CloneDefault" | head  -n 1 | awk "{print \$2}"' | parallel --keep-order 'echo {}' >act.txt
                cat act.txt | parallel --bar --keep-order 'echo {}'
                printf "\n"
                gum style $'\033[1;92mACTIVITIES INSTALLED ✔\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                gum style $'\033[1;91m$$\033[0m\033[1;93mINSTALLATION HAS COMPLETED\033[0m\033[1;91m$$\033[0m' --width "$width" --height 1 --bold --align center
                chmod +x aal.sh
                printf "\n"
                width=$(tput cols)
                gum style $'\033[1;38;5;124m✦ \033[0m\033[1;38;5;86mtype\033[0m \033[1;38;5;225msource aal.sh\033[0m\033[1;38;5;124m ✦\033[0m' --width "$width" --height 1 --bold --align center
            elif [[ "$status" -eq 1 ]]; then
                clear
                printf "\n"
                width=$(tput cols)
                gum style $'\033[1;91m😢 YOU ARE NOT CONNECTED WITH ADB 😢\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                gum style $'\033[1;92mTO INSTALL THIS APPLICATION\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                gum style $'\033[1;93mCONNECT YOUR DEVICE WITH ADB FIRST\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                gum style $'\033[1;38;5;209mVISIT THIS LINK\033[0m' --width "$width" --height 1 --bold --align center
                printf "\n"
                gum style $'\033[1;96mhttp://androidappslauncher.netlify.app/\033[0m' --width "$width" --height 1 --bold --align center
            fi
        fi
    }
    files
fi
