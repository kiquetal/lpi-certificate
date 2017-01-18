#!/bin/bash

sed 's/2015/2016/g' originalText.txt > sedOriginalText.txt
sed '/option/a que cosas' sedInput.txt
