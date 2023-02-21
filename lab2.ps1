echo "-------------------"
echo "Comando 1 - Revisar el Managed by de Messi del Grupo Global Ventas"
Get-ADGroup -LDAPFilter "(ManagedBy=$((Get-ADuser -Identity lmessi).distinguishedname))"
echo "-------------------"
echo "Comando 2 - Miembros del Grupo Domain Local en Gerencia"
Get-ADGroupMember -Identity "DLGerencia" | Select-Object Name | Sort-Object Name
echo "-------------------"
echo "Comando 3 - Permisos en archivo TXT en Folder Data\Ventas"
Get-Acl -Path C:\Data\Ventas\Test.txt | Format-Table -Wrap
