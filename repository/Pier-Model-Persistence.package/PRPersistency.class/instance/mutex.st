accessing
mutex
	"Return a mutex (an object that understands #critical:) to ensure that only one process is modifying the model at once. This is needed to make certain that the model remains in a consistent state. All write access must go through this mutex."

	^ mutex