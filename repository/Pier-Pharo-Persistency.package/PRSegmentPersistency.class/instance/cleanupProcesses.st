cleanup
cleanupProcesses
	"Get rid of pocesses that potentialy still hang somewhere and reference our model. Take care not to kill any of the vital processes."
	<cleanup>

	| protected |
	protected := IdentitySet new.
	protected
		add: Project uiProcess;
		add: Processor activeProcess;
		add: Processor backgroundProcess;
		add: Smalltalk lowSpaceWatcherProcess;
		add: WeakArray runningFinalizationProcess.
	Process allInstances do: [ :each |
		(each isTerminated or: [ Processor highestPriority = each priority or: [ protected includes: each ] ])
			ifFalse: [ each terminate ] ]
	.
	