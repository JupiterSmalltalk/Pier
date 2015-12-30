private
log: aContext on: aStream
	aStream nextPutAll: ' == '; nextPutAll: aContext command class label; nextPutAll: ' == '; cr.
	aStream nextPutAll: ' -- context -- '; cr.
	aContext magritteDescription do: [ :each |
		aStream
			nextPutAll: each label; nextPutAll: ': ';
			nextPutAll: (each toString: (aContext
				readUsing: each)); cr ].
	aStream nextPutAll: ' -- command -- '; cr.
	aContext command magritteDescription do: [ :each |
		aStream
			nextPutAll: each label; nextPutAll: ': ';
			nextPutAll: (each toString: (aContext command
				readUsing: each)); cr ].
	aStream cr; cr