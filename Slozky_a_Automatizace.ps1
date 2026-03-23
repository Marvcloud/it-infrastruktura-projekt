$users = Get-ADUser -Filter * -SearchBase "OU=Marketing,DC=domaci,DC=server"
foreach ($user in $users) {
   Write-Host "Vytvářím složku pro $($user.SamAccountName)"
   New-Item -Path "C:\SdileneSoubory\$($user.SamAccountName)" -ItemType Directory
}

$users = Get-ADUser -Filter * -SearchBase "OU=HR,DC=domaci,DC=server"
foreach ($user in $users) {
   Write-Host "Vytvářím složku pro $($user.SamAccountName)"
   New-Item -Path "C:\SdileneSoubory\$($user.SamAccountName)" -ItemType Directory
}

$users = Get-ADUser -Filter * -SearchBase "OU=IT,DC=domaci,DC=server"
foreach ($user in $users) {
   Write-Host "Vytvářím složku pro $($user.SamAccountName)"
   New-Item -Path "C:\SdileneSoubory\$($user.SamAccountName)" -ItemType Directory
}

$users = Get-ADUser -Filter * -SearchBase "OU=Ucetnictvi,DC=domaci,DC=server"
foreach ($user in $users) {
   Write-Host "Vytvářím složku pro $($user.SamAccountName)"
   New-Item -Path "C:\SdileneSoubory\$($user.SamAccountName)" -ItemType Directory
}