#!/bin/bash

#elim ip first 3 octates
sed -i.bak -E 's/\b([0-9]{1,3}\.){3}([0-9]{1,3})\b/XXX.ZZZ.YYY.\2/' access.log
