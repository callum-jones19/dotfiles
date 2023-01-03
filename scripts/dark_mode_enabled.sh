#! /bin/dash

lightmode="$1"

if [ -z "$lightmode" ]
then
    lightmode='true'
    feh --bg-fill --no-fehbg '/home/callumjones/wallpapers/coffee_cats.png'
    echo  '  Dark Mode'
elif [ "$lightmode" = 'true' ]
then
    lightmode='false'
    feh --bg-fill --no-fehbg '/home/callumjones/wallpapers/sq6ljh2em3p81.jpg'
    echo '  Dark Mode'
else
    lightmode='true'
    feh --bg-fill --no-fehbg '/home/callumjones/wallpapers/coffee_cats.png'
    echo '  Dark Mode'
fi
