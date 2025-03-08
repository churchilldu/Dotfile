/*
source: https://gist.github.com/volks73/1e889e01ad0a736159a5d56268a300a8
*/

#Requires AutoHotkey v2.0


*CapsLock::
{
    SetCapsLockState 'AlwaysOff' 
    Send "{LControl down}"
}

*CapsLock up::
{
    Send "{LControl Up}"

    if (A_PriorKey=="CapsLock"){
	if (A_TimeSincePriorHotkey < 150)
		Suspend "1"
		Send "{Esc}"
		Suspend "0"
	}
}
