exporting
createClassFor: kernel instanceVariableNames: instanceVariableNames
	^ PRKernelCreatorBase
		subclass: ('PRKernelCreatorFor', ((self selectorFromName: kernel name) capitalized))  asSymbol
		instanceVariableNames: instanceVariableNames
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Pier-Exported-Code'