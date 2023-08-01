#!/bin/bash

# UV index recommendation calculator
    # 0-2 Low
    # 3-7 Moderate to High
    # 8+ Very High to Extreme

read -p 'Enter a UV index value from 0 to 11: ' uvvalue

if [ "$uvvalue" -le 2 ]; then
    echo "UV level is Low."
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then
    echo "UV level is Moderate to High."
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then
    echo "UV level is Very High to EXtreme."
else
    echo "Invalid UV index value entered."
fi

exit 0