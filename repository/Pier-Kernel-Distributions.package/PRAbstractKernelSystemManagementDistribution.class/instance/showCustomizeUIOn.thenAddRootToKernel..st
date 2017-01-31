creation
showCustomizeUIOn: calleeComponent thenAddRootToKernel: theKernel
	| theMagritteCustomizeUIDescription |
	theMagritteCustomizeUIDescription := self magritteDescription.
	theMagritteCustomizeUIDescription isEmpty  
		ifFalse: [
			calleeComponent call: ((theMagritteCustomizeUIDescription asComponentOn: self)
				addDecoration: 
					((TWBSMagritteFormDecoration buttons: (Array with: #save -> 'Create kernel'))
						formCss: 'form-horizontal';
						legend: 'Customize ', self class label;
						yourself);
				yourself) ].
	
	^ self createRootOn: theKernel