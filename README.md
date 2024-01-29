Device Guard status can be seen using powershell using:
Get-CimInstance –ClassName Win32_DeviceGuard –Namespace root\Microsoft\Windows\DeviceGuard

However, the command returns arrays of numbers and the user is supposed to look the information up.

What my script does is translate do that translation for the user. So far though, only the first invoke is being done.
The rest are written in the app but it's exiting before going through them.
It took a minute or two to write so I thought I'd post it here for others to not have to retype the code out.

It's almost working.

My example output is:
Hypervisor Support Available
DMA Protection Available
Execution Protection Available
MBEC/GBEC Available
Code Integrity Enforcement Available
Press Enter to continue...:

I included another script that I have, that was written by someone else. I wish I could give credit to them but I don't remember when or how or who.
