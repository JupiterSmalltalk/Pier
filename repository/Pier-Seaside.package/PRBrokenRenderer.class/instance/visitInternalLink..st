visiting-document
visitInternalLink: aLink
	"Allow users to add new content, if they have the appropriate permissions."

	| lookup context |
	lookup := self context structure
		lookupIncompletePath: aLink reference.
	context := self context
		structure: lookup key
		command: PRAddCommand new.
	context command
		link: aLink;
		suggestName: lookup value.
	(self anchorFor: aLink)
		goto: context;
		with: [ self visitLink: aLink ]