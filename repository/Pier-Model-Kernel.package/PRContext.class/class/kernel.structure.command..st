instance creation
kernel: aKernel structure: aStructure command: aCommand
	^ self new
		setKernel: aKernel;
		setStructure: aStructure;
		setCommand: aCommand;
		yourself