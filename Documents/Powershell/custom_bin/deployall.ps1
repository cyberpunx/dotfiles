if($args.Count -lt 1){
	"Insufficient arguments. Usage deployall <appName>";
	Exit
}

$appNames = ""
for ( $i = 0; $i -lt $args.count; $i++ ) {
    $appNames += $args[$i]+" "
} 

$scriptPath="C:\Users\Franco\Documents\Powershell\custom_bin\deploy.exe"

$command_br =  $scriptPath + " br $appNames"
$command_sy =  $scriptPath + " sy $appNames"
$command_nw =  $scriptPath + " nw $appNames"
$command_vo =  $scriptPath + " vo $appNames"


Write-Host " > Deploying on all SP: " -NoNewline  
Write-Host $appNames -ForegroundColor DarkMagenta 


Write-Host " > " -NoNewline 
Write-Host "-- BRELLA-- " -ForegroundColor DarkGreen
Invoke-Expression $command_br

Write-Host " > " -NoNewline 
Write-Host "-- SYMETRA-- " -ForegroundColor DarkBlue
Invoke-Expression $command_sy

Write-Host " > " -NoNewline 
Write-Host "-- NATIONWIDE-- " -ForegroundColor Cyan
Invoke-Expression $command_nw

Write-Host " > " -NoNewline 
Write-Host "-- VOYA-- " -ForegroundColor DarkRed
Invoke-Expression $command_vo

Write-Host " > END OF DEPLOY ALL" -ForegroundColor DarkMagenta

#Write-Host "BE command: "  $command_br
#Write-Host "SY command:: "  $command_sy
#Write-Host "NW command:: "  $command_nw
#Write-Host "VO command:: "  $command_vo
