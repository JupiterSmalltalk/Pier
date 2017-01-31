comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ kernelName hash bitXor: (dispatcherName hash bitXor: distribution hash)