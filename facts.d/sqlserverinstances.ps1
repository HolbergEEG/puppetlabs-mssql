$ErrorActionPreference= 'silentlycontinue'
$sqlinstancenames = Get-Item -Path "HKLM:\Software\Microsoft\Microsoft SQL Server\Instance Names\SQL" | Select-Object -ExpandProperty Property
if ($sqlinstancenames)  
{
	Write-Host SQLServerInstanceNames=$sqlinstancenames
} 
else 
{
	Write-Host SQLServerInstanceNames=""
}
