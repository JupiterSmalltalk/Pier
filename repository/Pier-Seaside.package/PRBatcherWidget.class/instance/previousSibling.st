accessing
previousSibling
	"Answer the previous sibling in the current context or nil."

	^ self siblings before: self context structure ifAbsent: [ nil ]