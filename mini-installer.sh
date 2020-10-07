#!/bin/bash

echo -e "deb https://deb.parrot.sh/parrot/ rolling main contrib non-free
        #deb-src https://deb.parrot.sh/parrot/ rolling main contrib non-free
        deb https://deb.parrot.sh/parrot/ rolling-security main contrib non-free
        #deb-src https://deb.parrot.sh/parrot/ rolling-security main contrib non-free" > /etc/apt/sources.list.d/parrot.list

apt-key adv --keyserver keys.gnupg.net --recv-keys B56FFA946EB1660A
apt update
apt install parrot-meta-web parrot-meta-pwtools git
git clone https://github.com/danielmiessler/SecLists.git && mv SecLists /usr/share/wordlists/
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git && mv privilege-escalation-awesome-scripts-suite /opt/
