initialization
setPrototypePRComponentGeneration
	self exportHelper: (self isPier3 
		ifTrue: [ PRPier3ToPier3ExportHelper recursiveMethods: recursiveMethods ]
		ifFalse: [ PRPier1or2ToPier3ExportHelper recursiveMethods: recursiveMethods ])