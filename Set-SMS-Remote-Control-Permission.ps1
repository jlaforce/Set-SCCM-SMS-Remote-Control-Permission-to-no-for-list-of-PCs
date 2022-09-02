## I create the function to select a test list of computers.
Function Get-FileName($initialDirectory)
{   
    [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.InitialDirectory = $initialDirectory
    $OpenFileDialog.filter = "TXT (*.txt) | *.txt"
    $OpenFileDialog.ShowDialog() | Out-Null
    $OpenFileDialog.FileName
}
$inputfile = Get-FileName ".\"
$inputdata = Get-Content $inputfile
$pcs = $inputdata

##Now I go through and change or add the registry key to allow for no permission needed of a Remote Control.
foreach($pc in $pcs) {
    .\PsExec.exe -nobanner \\$pc -h -s powershell.exe "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\SMS\Client\Client Components\Remote Control\' -Name 'Permission Required' -Value 0"
}
