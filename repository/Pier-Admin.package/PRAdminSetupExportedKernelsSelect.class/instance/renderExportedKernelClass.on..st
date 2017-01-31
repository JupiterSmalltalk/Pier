rendering
renderExportedKernelClass: class on: html
	| exportedKernelCreator |
	class isNil ifTrue: [ ^ self ].
	
	exportedKernelCreator := class new.

	html div: [
		html text: 'kernel name: ('; strong: exportedKernelCreator kernelName; text: ')' ].
	html div: [
		html text: 'path: ('; strong: '/'; strong: exportedKernelCreator dispatcherPathName; text: ')' ]