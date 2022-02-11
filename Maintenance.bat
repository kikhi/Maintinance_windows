title Windows Maintenance

echo Archivos basura
cd %temp% 
cd prefetch

echo Files integrity scan
sfc /scannow

echo Hard drive Scan and Fix problems
chkdsk

echo Defrag hard drive
defrag c: /a
defrag c: /d

ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns

systeminfo
ipconfig
netstat
