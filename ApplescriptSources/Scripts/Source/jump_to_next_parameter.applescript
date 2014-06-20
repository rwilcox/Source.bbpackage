tell application "BBEdit"
	tell text of front text document
		get selection
		-- jump one ahead - perhaps we are at the end of a variable. Instead of jumping to where we are
		-- we want to jump to the end of the next variable
		set currentCharacterOffset to characterOffset of selection
		select insertion point after character currentCharacterOffset
		
		set bbFind to find "(,\\W*|$)" selecting match false Â
			options {backwards:false, case sensitive:false, extend selection:false, match words:false, returning results:false, search mode:grep, showing results:true, starting at top:false, wrap around:false}
		
		if bbFind's found is true then
			set theStart to bbFind's found object's characterOffset
			set theEnd to selection's length
			select insertion point after character (theStart - 1)
		else
			beep
		end if
	end tell
end tell
