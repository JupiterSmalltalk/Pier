accessing-description
editDescription
	"Answer the descriptions that edit the receiver."

	^ self magritteDescription select: [ :each | each isEditable ]