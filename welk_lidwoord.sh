#! /bin/bash

# calls the online dictionary and pulls relevant text from the html response
html=$(curl -s https://www.welklidwoord.nl/{$1})

nl=$(echo "$html" | grep -oP '(?<=(gebruiken wij )).*')
en=$(echo "$html" | grep -oP '(?<=(English: </strong>)).*?(?=<)')
fr=$(echo "$html" | grep -oP '(?<=(Français: </strong>)).*?(?=<)')
de=$(echo "$html" | grep -oP '(?<=(Deutsch: </strong>)).*?(?=<)')

# remove pipe or dot at end
nl=$(echo ${nl//.})
# some german and french words are produced in the html with the wrong article, remove from all
fr=$(echo ${fr//|} | cut -d " " -f-2)
de=$(echo ${de//|} | cut -d " " -f-2)

# define formatting
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

# prints dutch word with article, along with the other translations available in the html
echo -e "* Dutch: ${RED}${BOLD}${nl}${NC}${NORM}"
echo "* English: "$en
echo "* German: "$de
echo "* French: "$fr


# /html/body/div[2]/div[3]/h2/font/span
