private
cleanup
	"Execute all the registered cleanup code. Do not execute this code within an image you intend to continue using. This is a non-reversible operation and pretty much destroys your complete environment."

	(Pragma allNamed: #cleanup from: self class to: PRSegmentPersistency)
		do: [ :pragma | self perform: pragma selector ].
	Smalltalk garbageCollect