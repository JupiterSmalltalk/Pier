responding
handle: aRequestContext
	self isFullResponse ifFalse: [ self shouldNotImplement ].
	aRequestContext respond: [ :response | self respondUsing: response ]