#!/bin/bash

POOL=etc-jp1.nanopool.org:19999
WALLET=0x4dc98cbf13a26f2cae243f0b9565bc6367f20c46
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
