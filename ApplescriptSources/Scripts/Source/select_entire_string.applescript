tell application "BBEdit"
	tell text of front text document
		set bbFind to find "\"" selecting match true Â
			options {backwards:false, case sensitive:false, extend selection:true, match words:false, returning results:false, search mode:grep, showing results:true, starting at top:false, wrap around:false}
		
		-- the above will select everything, including the final ". That's not consistent, so trim a character
		-- WD-rpw 11-21-2011
		set theStart to selection's characterOffset
		set theEnd to selection's length
		select (characters theStart thru (theEnd))
	end tell
end tell
