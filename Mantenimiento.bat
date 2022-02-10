echo Archivos basura
cd %temp% 
cd prefetch

echo Escaneo de integridad de archivos
sfc /scannow

echo Escaneo y reparacion de daños en disco duro
chkdsk

echo Desfragmentar disco duro
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
