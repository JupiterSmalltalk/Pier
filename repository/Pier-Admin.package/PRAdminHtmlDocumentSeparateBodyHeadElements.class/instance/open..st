actions
open: aRoot
	htmlRoot := aRoot
	
	"
	deliberately don't call:
	
	super open: aRoot 
	
	so that the rendered document stream only contains
	the contents of the rendered body.
	"