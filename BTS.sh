#!/bin/bash

############################################################################################################################
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                             ATTENTION SI VOUS ETES EN BTS VOUS N'AVEZ PAS LE DROIT D ÊTRE ICI                            #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
#                                                                                                                          #
############################################################################################################################


# Couleurs pour le texte
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"

# Remise couleur naturelle
RESET="\033[0m"

# Fonction "Press Enter to continue"
press_enter() {
    echo -e "${CYAN}Appuyez sur Entrée pour continuer...${RESET}"
    read -r  # Attente que l'utilisateur appuie sur Entrée
}





######################################################## INTRODUCTION ######################################################

clear
press_enter
clear

echo -e "${RED}"
echo -e "          ____  _               _            _       _                   _         _               _ _            "
echo -e "         / ___|| |__   ___ _ __| | ___   ___| | __  (_)___     _ __ ___ (_)___ ___(_)_ __   __ _  | | |           "
echo -e "         \___ \| '_ \ / _ \ '__| |/ _ \ / __| |/ /  | / __|   | '_ \ _ \| / __/ __| | '_ \ / _\ | | | |           "
echo -e "          ___) | | | |  __/ |  | | (_) | (__|   <   | \__ \   | | | | | | \__ \__ \ | | | | (_| | |_|_|           "
echo -e "         |____/|_| |_|\___|_| _|_|\___/ \___|_|\_\  |_|___/   |_| |_| |_|_|___/___/_|_| |_|\__, | (_|_)           "
echo -e "                                                                                           |___/          ${RESET}"                                                                                                                                                                                                                                                                      
echo
echo -e "Le 1er Décembre, 2024"
echo
echo -e "                              === Journal de l'Enquête : Le Hacker Fantôme ===                                    "
echo
sleep 1
echo
echo -e " Un hacker mystérieux connu sous le nom de 'Le Fantôme' a semé la terreur à travers plusieurs grandes entreprises."
echo -e "Le détective Sherlock Holmes, avec l'aide de son fidèle acolyte Dr. Watson, a pris en charge l'affaire. Mais alors"
echo -e "que les indices s'accumulaient, Sherlock et Watson ont mystérieusement disparu...                                 "
sleep 2
echo
echo
echo -e "${CYAN}  Vous, détective en herbe, allez devoir prendre la relève et découvrir la vérité en suivant les traces laissées   "
echo -e "par Sherlock. Attention le hacker fantome est connu pour vouloir s'amuser avec les gens qui essai de l'arreter ,  "
echo -e "n'oubliez pas qu'il est dangereux !                                                                               "
echo
sleep 3
echo -e "N'hésiter pas a utiliser les documents, les notes, les images et tout ce que vous pourrez trouver sur le PC portable"
echo -e "de Sherlock. Utiliser vos connaissances en linux et en sécuriter d'information et vous reussirez à coincer le hacker"
echo -e "fantome et sauver Sherlock et son accolite Watson. Bonne chance !${RESET}                                         "
sleep 3 
echo
echo
press_enter
clear


########################################### Étape 1 : Mot de passe de session ##############################################

echo -e "${BLUE}#################################### [Étape 1] Accès au PC de Sherlock ##########################################${RESET}"
echo
sleep 1
echo
echo -e "Le PC de Sherlock est rester dans son bureau, Il a toute les notes de l'enqueteur. Il pourrait nous aider !       "
echo -e "Mais nous n'avons pas le mot de passe ... Sherlock est connu pour être simple d'esprit et directe, peut-être qu'il"
echo -e "a mis un mot de passe simple de quelqu'un a qui il tient ?"
echo
sleep 1

# Rendre la comparaison insensible à la casse
shopt -s nocasematch  # Active la comparaison insensible à la casse pour les chaînes

# Demande mot de passe jusqu'à ce que ce soit correct
while true; do
    read -p "Quel peut bien être le mot de passe de Sherlock ? " session_pass
    if [[ "$session_pass" =~ ^watson$ ]]; then  # Vérifie si le mot de passe est 'watson' peu importe la casse
        echo -e "${GREEN}Accès accordé.${RESET}"
        break  # Mot de passe correct, on sort de la boucle et on passe à la suite
    else
        echo -e "${RED}Mot de passe incorrect.${RESET}"  # Si mot de passe incorrect, on recommence
    fi
done