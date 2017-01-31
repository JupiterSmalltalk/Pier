helpers
renderAssociatedPierInstanceLinkFor: kernel text: text on: html
	| urlPath kernelApplicationPaths kernelPathPair |
	kernelApplicationPaths := PRAdminKernelPathPair kernelPathPairs.
	kernelPathPair := kernelApplicationPaths detect: [ :each | each kernel = kernel ] ifNone: [ nil ].

	kernelPathPair notNil ifTrue: [		
		html div
			id: #pierInstanceLink;
			with: [
				| url |
				url := WAUrl absolute: kernelPathPair path.
				html text: text.
				html anchor
					class: 'external';
					url: url;
					with: url greaseString ] ]