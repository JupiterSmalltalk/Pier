actions
choose
	| tree |
	tree := WATree root: self context root path: self context structure parents.
	tree
		labelBlock: [ :structure | structure title ];
		childrenBlock: [ :structure |
			(self context enumeratorFor: structure)
				contents ];
		canSelectBlock: [ :structure | 
			self magritteDescription isSatisfiedBy: structure ].
	self chooser: tree