tell application "BBEdit"
	tell text of front text document
		set bbFind to find ")" selecting match true Â
			options {backwards:false, case sensitive:false, extend selection:true, match words:false, returning results:false, showing results:true, starting at top:false, wrap around:false}
		set theStart to selection's characterOffset
		set theEnd to selection's length
		select (text from character theStart to character (theStart + (theEnd - 2)))
	end tell
end tell
