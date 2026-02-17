on run
	set theDir to do shell script "osascript -e 'tell application \"Finder\" to get POSIX path of (target of front window as alias)'"
	if theDir ends with "/" and length of theDir > 1 then
		set theDir to text 1 thru -2 of theDir
	end if
	set tmpFile to "/tmp/cd2-ghostty-launch.sh"
	set scriptContent to "#!/bin/zsh" & linefeed & "source ~/.zshrc" & linefeed & "cd " & quoted form of theDir & linefeed & "exec zsh" & linefeed
	do shell script "echo " & quoted form of scriptContent & " > " & tmpFile & " && chmod +x " & tmpFile
	do shell script "open -na Ghostty --args -e " & tmpFile
end run
