tell application "BBEdit"
	tell text of front text document
		set bbFind to find ",\\W*" selecting match false Â
			options {backwards:true, case sensitive:false, extend selection:false, match words:false, returning results:false, search mode:grep, showing results:true, starting at top:false, wrap around:false}
		
		if bbFind's found is true then
			set theStart to bbFind's found object's characterOffset
			set theEnd to selection's length
			select insertion point after character (theStart - 1)
		else
			beep
		end if
	end tell
end tell
