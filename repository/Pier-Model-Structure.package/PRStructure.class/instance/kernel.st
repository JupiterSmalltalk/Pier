accessing-dynamic
kernel
	"Answer the kernel of the receiver."

	| root |
	root := self root.
	^ PRKernel instances
		detect: [ :each | each root = root ]
		ifNone: [ self error: self title , ' is not part of a kernel.' ]