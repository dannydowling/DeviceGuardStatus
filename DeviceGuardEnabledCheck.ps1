$AvailableSecurityPropertiesCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty AvailableSecurityProperties'
$AvailableSecurityPropertiesResult = Invoke-Expression $AvailableSecurityPropertiesCommand

if ($AvailableSecurityPropertiesResult -match '1')
{
	Write-Output "Hypervisor Support Available"
}
if ($AvailableSecurityPropertiesResult -match '2')
{
	Write-Output "Secure Boot Available"
}
if ($AvailableSecurityPropertiesResult -match '3')
{
	Write-Output "DMA Protection Available"
}
if ($AvailableSecurityPropertiesResult -match '4')
{
	Write-Output "Secure Memory Overwrite Available"
}
if ($AvailableSecurityPropertiesResult -match '5')
{
	Write-Output "Execution Protection Available"
}
if ($AvailableSecurityPropertiesResult -match '6')
{
	Write-Output "SMM Mitigations Available"
}
if ($AvailableSecurityPropertiesResult -match '7')
{
	Write-Output "MBEC/GBEC Available"
}
if ($AvailableSecurityPropertiesResult -match '8')
{
	Write-Output "APIC Virtualization Available"
}

$CodeIntergrityCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty CodeIntegrityPolicyEnforcementStatus'
$CodeIntergrityCommandResult = Invoke-Expression $CodeIntergrityCommand

if ($CodeIntergrityCommandResult -match '2')
{
	Write-Output "Code Integrity Enforcement Available"
}

$RequiredSecurityPropertiesCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty RequiredSecurityProperties'
$RequiredSecurityPropertiesResult = Invoke-Expression $RequiredSecurityPropertiesCommand

if ($RequiredSecurityPropertiesResult -match '1')
{
	Write-Output "Hypervisor Support is Needed"
}

if ($RequiredSecurityPropertiesResult -match '2')
{
	Write-Output "Secure Boot is Needed"
}

if ($RequiredSecurityPropertiesResult -match '3')
{
	Write-Output "DMA Protection is Needed"
}

if ($RequiredSecurityPropertiesResult -match '4')
{
	Write-Output "Secure Memory Overwrite Support is Needed"
}

if ($RequiredSecurityPropertiesResult -match '5')
{
	Write-Output "NX Protections are Needed"
}

if ($RequiredSecurityPropertiesResult -match '6')
{
	Write-Output "SMM Mitigations are Needed"
}

if ($RequiredSecurityPropertiesResult -match '7')
{
	Write-Output "MBEC/GBEC is Needed"
}

$SecurityServicesConfiguredCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty SecurityServicesConfigured'
$SecurityServicesConfiguredResult = Invoke-Expression $SecurityServicesConfiguredCommand

if ($SecurityServicesConfiguredResult -match '1')
{
	Write-Output "Credential Guard is Configured"
}

if ($SecurityServicesConfiguredResult -match '2')
{
	Write-Output "HVCI is Configured"
}

if ($SecurityServicesConfiguredResult -match '3')
{
	Write-Output "System Guard Secure Launch is Configured"
}

if ($SecurityServicesConfiguredResult -match '4')
{
	Write-Output "SMM Firmware Measurement is Configured"
}

$SecurityServicesRunningCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty SecurityServicesRunning'
$SecurityServicesRunningResult = Invoke-Expression $SecurityServicesRunningCommand

if ($SecurityServicesRunningResult -match '1')
{
	Write-Output "Credential Guard is Running"
}

if ($SecurityServicesRunningResult -match '2')
{
	Write-Output "HVCI is Running"
}

if ($SecurityServicesRunningResult -match '3')
{
	Write-Output "System Guard Secure Launch is Running"
}

if ($SecurityServicesRunningResult -match '4')
{
	Write-Output "SMM Firmware Measurement is Running"
}

$VirtualizationBasedSecurityStatusCommand = 'Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root/Microsoft/Windows/DeviceGuard | Select-Object -ExpandProperty VirtualizationBasedSecurityStatus'
$VirtualizationBasedSecurityStatusResult = Invoke-Expression $VirtualizationBasedSecurityStatusCommand

if ($VirtualizationBasedSecurityStatusResult -match '1')
{
	Write-Output "Virtualiztion Based Security is Enabled but not Running"
}

if ($VirtualizationBasedSecurityStatusResult -match '2')
{
	Write-Output "Virtualiztion Based Security is Running"
}

pause