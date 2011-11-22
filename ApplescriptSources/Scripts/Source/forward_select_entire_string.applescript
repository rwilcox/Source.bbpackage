tell application "BBEdit"
	tell text of front text document
		set bbFind to find "\"" selecting match true Â
			options {backwards:true, case sensitive:false, extend selection:true, match words:false, returning results:false, search mode:grep, showing results:true, starting at top:false, wrap around:false}
	end tell
end tell
