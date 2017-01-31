accessing-dynamic
children
	^ super children, (Array with: self batcher) , (self batcher batch gather: [ :each | each componentsIn: self context ])