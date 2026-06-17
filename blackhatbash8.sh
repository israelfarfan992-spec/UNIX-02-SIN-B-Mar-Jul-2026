#! /bin/bash
awk '{print $1,$2,$3}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt
awk '{print $1}' log.txt

awk '{print $1,$NF}' log.txt
awk '{print $NF}' log.txt

awk -F',' '{print $1}' example_csv.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep "Godzilla" newlog.txt 

sed 's/ //g' log.txt
sed '1d' log.txt
sed '$d' log.txt
sed -n '2,15 p' log.txt
sed -i '1d' log.txt

[israel_farfan] /workspaces/UNIX-02-SIN-B-Mar-Jul-2026 $ sleep 100 &
[2] 21933

[israel_farfan] /workspaces/UNIX-02-SIN-B-Mar-Jul-2026 $ ps -ef | grep sleep
[1]-  Hecho                      sleep 100
root           1       0  0 12:21 ?        00:00:00 /bin/sh -c echo Container started trap "exit 0" 15  exec "$@" while sleep 1 & wait $!; do :; done -
root       21933     722  0 13:14 pts/2    00:00:00 sleep 100
root       21965       1  0 13:14 ?        00:00:00 sleep 1
root       21972     722  0 13:14 pts/2    00:00:00 grep --color=auto sleep

[israel_farfan] /workspaces/UNIX-02-SIN-B-Mar-Jul-2026 $ jobs
[2]+  Ejecutando                 sleep 100 &


