cd ..
SET zabbixAPIDeployPath=%cd%\Zabbix_API_deploy
rd /s /Q %zabbixAPIDeployPath%
mkdir %zabbixAPIDeployPath%
nuget pack ..\src\ZabbixApi\ZabbixApi.csproj -Symbols -OutputDirectory %zabbixAPIDeployPath%"
nuget pack ..\src\ZabbixApi\ZabbixApi.csproj -Prop Configuration=Release -OutputDirectory %zabbixAPIDeployPath%"
nuget push %zabbixAPIDeployPath%\*.nupkg -s http://nuget.vivint.com
echo Script has completed execution.
pause