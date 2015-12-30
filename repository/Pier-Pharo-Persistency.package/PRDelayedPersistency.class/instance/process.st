private
process
	(Delay forDuration: self duration)
		wait.
	Processor activeProcess
		priority: Processor highestPriority.
	process := nil.
	self snapshot