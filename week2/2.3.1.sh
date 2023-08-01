#!/bin/bash

val_a=25
val_b=20

# -eq demonstration
if [ "$val_a" -eq "$val_b" ]; then
    echo "The integers are the same"
else
    echo "The integers are not the same"
fi



# -ne demonstration
if [ "$val_a" -ne "$val_b" ]; then
    echo "The integers are not the same"
else
    echo "The integers are the same"
fi


# -gt demonstration
if [ "$val_a" -gt "$val_b" ]; then
    echo "val_a is greater than val_b"
else
    echo "val_a is not greater than val_b"
fi

exit 0