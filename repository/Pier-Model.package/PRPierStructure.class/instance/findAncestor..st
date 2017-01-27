querying
findAncestor: aConditionBlock
	"Find the first structure starting at the receiver going up the parent chain, that satisfies the condition in aConditionBlock. Answer nil, if not present."
	
	^ self findAncestor: aConditionBlock ifAbsent: [ nil ]