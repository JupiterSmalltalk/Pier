exporting
exportKernel: kernel
	| component rootComponent |
	
	self checkStreamPipeOperatorExists.
	
	component := self createClassFor: kernel.
	self addKernelNameAccessorMethod: kernel forComponent: component.
	self addDispatcherPathNameOn: component.
	self addRootAccessorMethodOn: component.

	self addKernelGroups: kernel to: component.
	self addKernelUsers: kernel to: component.
	
	rootComponent := kernel root.
	
	self compile: (self rootTemplate: rootComponent)
		into: component
		classified: #'exported code'.
		
	self checkRootOwnerPermissionsMatchDefault: rootComponent.
		
	rootComponent enumerator with all do: [ :structure |
		| methods |
		methods := self writeCodeFor: structure.
		self compileMethods: methods intoComponent: component ].
	
	self rewriteRecursiveMethodsFor: kernel