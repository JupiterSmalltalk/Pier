accessing
selectedDistribution
	^ selectedDistribution ifNil: [ self distributions first ]