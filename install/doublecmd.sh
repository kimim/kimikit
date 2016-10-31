wget https://sourceforge.net/projects/doublecmd/files/DC%20for%20Windows%2064%20bit/ -O first.html
dc_folder=`cat first.html  | grep "^\ *Double Commander" | cut -d "<" -f 1 | sed -e 's/^[ \t]*//' | sort | tail -n 1 | sed -e 's/[ ]/%20/g'`

wget https://sourceforge.net/projects/doublecmd/files/DC%20for%20Windows%2064%20bit/$dc_folder/ -O second.html

dc_target=`cat second.html | grep "^\ *doublecmd" | cut -d "<" -f 1 | sed -e 's/^[ \t]*//' | grep "zip"`

wget https://sourceforge.net/projects/doublecmd/files/DC%20for%20Windows%2064%20bit/$dc_folder/$dc_target -O dc.zip

unzip dc.zip

cp ../doublecmd/doublecmd.xml doublecmd/

rm -rf ../doublecmd

cp -r doublecmd ../
