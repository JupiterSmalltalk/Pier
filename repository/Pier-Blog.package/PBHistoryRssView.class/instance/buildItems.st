private
buildItems
	| result |
	result := OrderedCollection new.
	self context kernel persistency reverseDo: [ :each |
		(self isVisible: each) ifTrue: [
			(self isFiltered not
				or: [ result isEmpty 
				or: [ result last structure ~= each structure 
				or: [ result last command class ~= each command class ] ] ]) ifTrue: [
					result addLast: each.
					result size < self maxSize
						ifFalse: [ ^ result ] ] ] ].
	^ result