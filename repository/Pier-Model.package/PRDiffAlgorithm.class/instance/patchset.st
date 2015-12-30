patching
patchset
	| patchset |
	patchset := OrderedCollection new.
	self patchsetDo: [ :operation :object :index | patchset addLast: (Array with: operation with: object) ].
	^ patchset asArray