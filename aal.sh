aal() {
    rm -rf applist.sh &>/dev/null
    mapfile -t arrLabel <label.txt
    mapfile -t arrAct <act.txt
    lengthofarrLabel="${#arrLabel[@]}"
    lengthofarrAct="${#arrAct[@]}"
    shopt -s expand_aliases
    for ((i = 0; i < lengthofarrLabel; i++)); do
        echo -e "alias $((i + 1))='am start -n ${arrAct[$i]} &>/dev/null'"
    done
    clear
    cd
    printf "\n"
    gum style $'\033[1;38;5;214m✷ ✷ ✷ ✷ \033[0m\033[1;38;5;193mANDROID APPS LAUNCHER\033[0m\033[1;38;5;214m ✷ ✷ ✷ ✷\033[0m' --width "$width" --height 1 --bold --align center
    printf "\n"
    gum style $'\033[1;38;5;183m▣\033[0m \033[1;93mCHOOSE YOUR APPLICATION:\033[0m' --width "$width" --height 1 --bold --align left
    mapfile -t arrLabel <label.txt
    mapfile -t arrAct <act.txt
    lengthofarrLabel="${#arrLabel[@]}"
    lengthofarrAct="${#arrAct[@]}"
    for ((i = 0; i < lengthofarrLabel; i++)); do
        echo -e "\033[1;38;5;165m$((i + 1))\033[0m\033[1;38;5;156m.\033[0m\033[1;38;5;39m${arrLabel[$i]}\033[0m"
    done
    printf "\n"
    gum style $'\033[1;38;5;124m✦ \033[0m\033[1;38;5;154mUSE SERIAL NUMBER TO LAUNCH THE APP\033[0m\033[1;38;5;124m ✦\033[0m' --width "$width" --height 1 --bold --align center
}
aal