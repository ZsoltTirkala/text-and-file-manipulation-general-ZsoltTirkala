#!/bin/bash

#elim ip first 3 octates
#sed -i.bak -E 's/\b([0-9]{1,3}\.){3}([0-9]{1,3})\b/XXX.ZZZ.YYY.\2/' access.log

#gets the request type, url and http version
#awk '{print $6,$7,$8}' access.log

#grep will get us only those, whose method is POST
#grep POST access.log

#head will get the first 20 and tail will get the last 10 of that => lines (11-20)
#head -n 20 access.log | tail

sed -E 's/\b([0-9]{1,3}\.){3}([0-9]{1,3})\b/XXX.XXX.XXX.\2/' access.log | awk '{print $6,$7,$8}' | grep POST | head -n 20 | tail
