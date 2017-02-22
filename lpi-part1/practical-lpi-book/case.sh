#!/bin/bash
echo 'Favorite car'
read CAR
case $CAR in 
 volvo | ford) echo 'Nice I love the:' $CAR
 ;;
 porshe | vw) echo $CAR 'OK'
 ;;
 yugo | fiat) echo 'Sorry'
 ;;
 * ) echo 'Not familiar'
 ;;
esac
exit 0
