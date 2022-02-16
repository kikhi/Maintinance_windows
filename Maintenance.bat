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

echo ======== System and network Information ========
systeminfo
ipconfig
netstat
powercfg /batteryreport 

echo ========Windows Key========
WMIC Path SoftwareLicensingService Get OA3xOriginalProductKey

:: For powershell windows clave(Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey)
