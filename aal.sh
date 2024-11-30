width=$(tput cols)
setalias() {
    rm -rf appEnabler.sh &>/dev/null
    mapfile -t arrLabel <label.txt
    mapfile -t arrAct <act.txt
    lengthofarrLabel="${#arrLabel[@]}"
    lengthofarrAct="${#arrAct[@]}"
    echo -e "shopt -s expand_aliases" >appEnabler.sh
    for ((i = 0; i < lengthofarrLabel; i++)); do
        echo -e "alias $((i + 1))='am start -n ${arrAct[$i]} &>/dev/null'" >>appEnabler.sh
    done
    cat label.txt | tr '[:upper:]' '[:lower:]' >label.txt
    awk -F '{print $1}' <label.txt >label.txt
    cat label.txt
    cat <<EOF >>appEnabler.sh
width=\$(tput cols)
showList() {
    clear
    printf "\n"
    gum style \$'🌹 \033[1;92mW E L C O M E\033[0m 🌹' --width "\$width" --height 1 --bold --align center 
    printf "\n"
    gum style \$'🌹 \033[1;92mTO\033[0m 🌹' --width "\$width" --height 1 --bold --align center 
    printf "\n"
    gum style \$'🌹 \033[1;92mANDROID APPS LAUNCHER\033[0m 🌹' --width "\$width" --height 1 --bold --align center 
    printf "\n"
    gum style \$'\033[1;38;5;183m▣\033[0m \033[1;93mCHOOSE YOUR APPLICATION:\033[0m' --width "\$width" --height 1 --bold --align left
    mapfile -t arrLabel <label.txt
    mapfile -t arrAct <act.txt
    lengthofarrLabel="\${#arrLabel[@]}"
    lengthofarrAct="\${#arrAct[@]}"
    for ((i = 0; i < lengthofarrLabel; i++)); do
        echo -e "\033[1;93m\$((i + 1))\033[0m\033[1;97m.\033[0m\033[1;96m\${arrLabel[\$i]}\033[0m"
    done
    gum style \$'\033[1;38;5;124m✦ \033[0m\033[1;93mUSE SERIAL NUMBER TO LAUNCH THE APP\033[0m\033[1;38;5;124m ✦\033[0m' --width "\$width" --height 1 --bold --align center
    cd
}
showList
EOF

}
setalias
