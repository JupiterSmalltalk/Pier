enumerating
reverseDo: aBlock
	"Evaluates aBlock in inverse chronological order for every item in the history of a structure. Subclasses might want to override the default implementation for efficiency."

	self history reverseDo: aBlock