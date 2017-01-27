rendering-items
renderStructureButton: aStructure on: html
	| isExpanded |
	html span class: 'button'; with: [
		(self childrenOf: aStructure) isEmpty
			ifTrue: [ html space ]
			ifFalse: [
				isExpanded := self isExpanded: aStructure.
				html anchor
					callback: [
						isExpanded
							ifTrue: [ self collapseStructure: aStructure ]
							ifFalse: [ self expandStructure: aStructure ] ];
					with: (isExpanded
						ifTrue: [ '-' ]
						ifFalse: [ '+' ]) ] ]