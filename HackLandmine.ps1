$k=[Math]::Ceiling(100/2);$o=New-Object -ComObject WScript.Shell;for($i = 0;$i -lt $k;$i++){$o.SendKeys([char] 175)}

function Get-fullName {

    try {

    $fullName = Net User $Env:username | Select-String -Pattern "Full Name";$fullName = ("$fullName").TrimStart("Full Name")

    }
 
 # If no name is detected function will return $env:UserName 

    # Write Error is just for troubleshooting 
    catch {Write-Error "No name was detected" 
    return $env:UserName
    -ErrorAction SilentlyContinue
    }

    return $fullName 

}

$FN = Get-fullName

function Pause-Script{
Add-Type -AssemblyName System.Windows.Forms
$originalPOS = [System.Windows.Forms.Cursor]::Position.X
$o=New-Object -ComObject WScript.Shell

    while (1) {
        $pauseTime = 3
        if ([Windows.Forms.Cursor]::Position.X -ne $originalPOS){
            break
        }
        else {
            $o.SendKeys("{CAPSLOCK}");Start-Sleep -Seconds $pauseTime
        }
    }
}

Pause-Script

$s=New-Object -ComObject SAPI.SpVoice
$s.Rate = -1
$s.Speak("We found you $FN")
Start-Process "https://www.dropbox.com/s/lsp5v2jrkzud3sd/signature.FucSocy.mov?dl=0"
$pauseTime = 2
$s.Speak("Your computer has been hacked by Unknown Black Hat.")
$s.Speak("We know all about you $FN, so there is no where to go or hide")
$s.Speak("I have control over all your files, passwords, Etcetera")
$s.Speak("We are F Society. We are Free. We are one.")
$s.Speak("No need for a computer restart since im already in the system for good, but you can try.")
$s.Speak("Remember, we know who you are $fn, and we can see you.")
$s.Speak("Expect me.")