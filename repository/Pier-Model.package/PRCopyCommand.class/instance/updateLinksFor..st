private
updateLinksFor: aStructure
	"When copying we need to update links pointing from the copied structures to the original structures."
	
	| copiedStructures originalStructures |
	copiedStructures := aStructure enumerator
		everything contents.
	originalStructures := self structure enumerator
		everything contents.
	copiedStructures do: [ :structure |
		structure outgoingReferences do: [ :link |
			link isInternal ifTrue: [
				| index copied |
				index := originalStructures indexOf: link target.
				copied := copiedStructures at: index ifAbsent: [ nil ].
				copied isNil ifFalse: [ link target: copied ] ] ] ].
	super updateLinksFor: aStructure