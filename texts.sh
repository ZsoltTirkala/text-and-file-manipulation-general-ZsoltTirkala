#!/bin/bash

#elim ip first 3 octates
sed -i.bak -E 's/\b([0-9]{1,3}\.){3}([0-9]{1,3})\b/XXX.ZZZ.YYY.\2/' access.log
#gets the request type, url and http version
awk '{print $6,$7,$8}' access.log
#grep will get us only those, whose method is POST
grep POST access.log
