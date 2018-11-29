# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name TW_Computers -Path "DC=AD,DC=tmwilso3,DC=lan" -Description "TW Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=TW_Computers,DC=AD,DC=tmwilso3,DC=lan"
New-ADOrganizationalUnit -Name TW_Groups -Path "DC=AD,DC=tmwilso3,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name TW_Privileged_Accounts -Path "DC=AD,DC=tmwilso3,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name TW_Users -Path "DC=AD,DC=tmwilso3,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=TW_Groups,DC=AD,DC=tmwilso3,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
