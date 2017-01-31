accessing
resourceUrlRootBlock
	^ resourceUrlRootBlock ifNil: [ resourceUrlRootBlock := [ 'uploads' ] ]