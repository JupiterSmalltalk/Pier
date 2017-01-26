public
structure: aStructure during: aBlock
	"Always go through this method when rendering a structure. This allows the system to remember the currently rendered structures and avoid deadly recursion as well as enables plugins to intercept when the different parts of a page are rendered."
	
	visited addLast: aStructure.
	^ aBlock ensure: [ visited removeLast ]