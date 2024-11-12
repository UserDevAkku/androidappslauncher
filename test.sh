# # install() {
# #     ##
# #     trap 'clear ;echo "***INSTALLATION CANCELED***"; exit' SIGINT
# #     ##
# #     printf "\n"
# #     ##
# #     printf "%s\n" "do you wanna install tree yes OR no?"
# #     read input
# #     if [ "$input" == "yes" ]; then
# #         printf "\n"
# #         echo "tree is installing"
# #         pkg install tree -y &>/dev/null
# #         status="$?"
# #         if [ "$status" -eq 0 ]; then
# #             echo "tree is installed"
# #         elif [ "$status" -eq 1 ]; then
# #             echo "please check your internet connection"
# #         fi
# #     elif [ "$input" == "no" ]; then
# #         printf "\n"
# #         echo "we are unable to install tree"
# #     elif [ -z "$input"]; then
# #      clear ;echo "***FORCE STOPPED***";
# #     fi
# # }
# # test() {
# #     command -v tree &>/dev/null
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         echo "tree is already installed "
# #     elif [ "$status" -eq 1 ]; then
# #         echo "tree is not installed "
# #         install
# #     fi
# # }
# # test
# #  #packages updated and upgraded
# #     pkg update && pkg upgrade -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         gum
# #         whiptail --msgbox "\n * PACKAGES UPDATED AND UPGRADED *" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi
# #     #to check whiptail is present or not
# #     command -v whiptail &> /dev/null
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #        whiptail --msgbox "\n * WHIPTAIL IS ALREADY INSTALLED *" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\n* WHIPTAIL PACKAGE IS REQUIRED *" 10 40 --ok-button "OK"
# #     fi
# #     #packages updated and upgraded
# #     pkg update && pkg upgrade -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         whiptail --msgbox "\nPACKAGES HAVE UPDATED AND UPGRADED" 10 40 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi
# #     pkg install whiptail -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #        whiptail --msgbox "\nWHIPTAIL PACKAGE INSTALLED" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi

# #     #parallel
# #     pkg install parallel -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         whiptail --msgbox "\nPARALLEL PACKAGE INSTALLED" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi
# #     #aapt
# #     pkg install aapt -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         whiptail --msgbox "\nAAPT PACKAGE INSTALLED" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi

# #     #ncurses-utils
# #     pkg install ncurses-utils -y
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         whiptail --msgbox "\nNCURSES-UTILS PACKAGE INSTALLED" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi
# #     #termux-api
# #     pkg install termux-api
# #     status="$?"
# #     if [ "$status" -eq 0 ]; then
# #         whiptail --msgbox "\TERMUX-API PACKAGE INSTALLED" 8 27 --ok-button "DONE"
# #     elif [ "$status" -eq 1 ]; then
# #         whiptail --msgbox "\nPLEASE CHECK INTERNET CONNECTION" 10 40 --ok-button "OK"
# #     fi

# #     parallel --citation 2>/dev/null
# # }
# # packages
# #

# echo -e $"
# printf '\n'
# "
