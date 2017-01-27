visiting
acceptDecorated: aPainterVisitor
	"Catch any actions done with visitors and make sure they have a context.
	This is hacky because it is really only needed for the initial render when
	the PRContextFilter is not in the dynamic context. This might be fixable.
	Note that this is not used with callback processing; see PRContextFilter."
	
	self withContextDo: [super acceptDecorated: aPainterVisitor]