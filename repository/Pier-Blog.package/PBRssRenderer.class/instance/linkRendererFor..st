private
linkRendererFor: aLink
	"Answer an instance of the most appropriate renderer for this link. If the link is internal and embedded, avoid the embedding and simply create a reference."

	| class |
	class := aLink isBroken
		ifTrue: [ PRBrokenRenderer ]
		ifFalse: [
			(aLink isEmbedded not
				or: [ aLink isInternal
				and: [ aLink target hasDocument
				and: [ visited includes: aLink target ] ] ])
					ifTrue: [ PRReferenceRenderer ]
					ifFalse: [ PBRssEmbeddedRenderer ] ].

	^ class parent: self