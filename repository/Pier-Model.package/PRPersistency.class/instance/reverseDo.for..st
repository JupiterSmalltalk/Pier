enumerating
reverseDo: aBlock for: aStructure
	"Evaluates aBlock in inverse chronological order for every item in the history of aStructure. Subclasses might want to override the default implementation for efficiency."

	(self historyFor: aStructure)
		reverseDo: aBlock