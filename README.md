# Set-SCCM-SMS-Remote-Control-Permission-to-no-for-list-of-PCs
This will edit the registry key on a selected list of computers that have your cclient installed, to not require permission to enable a Remote Control Session. 

#Requirements
1. You cool, you an Admin.
2. Put this script in a folder with the latest psexec. IF you dont have that. 
https://docs.microsoft.com/en-us/sysinternals/downloads/pstools

#Note
Yes, this can be done in invoke then scriptblock. But old grizzled administrators like me will tell you, in an enterprise environment, unless you have AMAZING documentation for every GPO, and Every OU, and every GPO nested within that OU, with every permission, and every permission that is proceeded and anteceded with your User Account, and hardware policy,  you can save yourself the hours of work, and just use PSexec. 
