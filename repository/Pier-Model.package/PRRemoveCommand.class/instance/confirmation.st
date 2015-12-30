accessing
confirmation
	^ self propertyAt: #confirmation ifAbsentPut: [
		| document structures |
		document := PRDocument new.
		document add: (PRHeader withAll: (Array with: (PRText content: 'Do you really want to remove ' , self structure title , '?')) level: 1).
		structures := self structure enumerator all contents.
		structures isEmpty ifFalse: [
			document add: (PRParagraph with: (PRText content: 'There ' , (structures size > 1 ifTrue: [ 'are ' ] ifFalse: [ 'is ' ]) , structures size greaseString , ' child ' , (structures size > 1 ifTrue: [ 'structures' ] ifFalse: [ 'structure' ]) , ':')).
			document add: (PROrderedList withAll: (structures collect: [ :each |
				PRListItem with: (PRInternalLink reference: each absolutePath) ])) ].
		structures := self root incomingReferences to: self structure; collect: [ :each | each owner ].
		structures isEmpty ifFalse: [
			document add: (PRParagraph with: (PRText content: 'There ' , (structures size > 1 ifTrue: [ 'are ' ] ifFalse: [ 'is ' ]) , structures size greaseString , ' incoming ' , (structures size > 1 ifTrue: [ 'references' ] ifFalse: [ 'reference' ]) , ':')).
			document add: (PROrderedList withAll: (structures collect: [ :each |
				PRListItem with: (PRInternalLink reference: each absolutePath) ])) ].
		document owner: self structure ]