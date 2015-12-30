enumerating
reject: aBlock
	"Evaluate aBlock for every structure visited by the receiver and answer a collection for which aBlock evaluates to ==false==."

	^ self select: [ :each | (aBlock value: each) not ]