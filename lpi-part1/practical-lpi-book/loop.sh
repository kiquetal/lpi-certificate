#!/bin/bash
 COUNTER=10
 while [ $COUNTER -gt 4 ]; do
    		echo "ALGO" $COUNTER
            let COUNTER=COUNTER-1
 done
exit 0
