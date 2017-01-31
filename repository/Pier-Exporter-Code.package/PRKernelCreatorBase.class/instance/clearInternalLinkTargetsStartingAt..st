helpers
clearInternalLinkTargetsStartingAt: startingStructure
	"PRDocumentItem content is created before all the parents and children have
	been wired together, resulting in incorrectly realised internal links. Here we clear
	the links target which will be reinitialised when the link is first visited."
	startingStructure enumerator with; all; do: [ :each |
		each outgoingReferences do: [ :link |
			(link isKindOf: PRInternalLink) ifTrue: [ link target: nil ] ] ]