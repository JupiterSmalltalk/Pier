events
doExecute
	"Create a new structure of requested type and add it to the children list of the current structure. If possible the following context will be set to an editor or a view onto the new structure."

	| structure |
	super doExecute.
	self structure
		addChild: (structure := self child).
	self link isNil
		ifFalse: [ self link target: structure; update ].
	structure editCommandClass isNil ifFalse: [ 
		self successAnswer: (self context
			structure: structure
			command: (structure editCommandClass new
				successAnswer: self successAnswer;
				cancelAnswer: self cancelAnswer;
				yourself)) ]