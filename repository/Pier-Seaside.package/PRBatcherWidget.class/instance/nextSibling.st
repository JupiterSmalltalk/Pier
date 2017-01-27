accessing
nextSibling
	"Answer the next sibling in the current context or nil."

	^ self siblings after: self context structure ifAbsent: [ nil ]