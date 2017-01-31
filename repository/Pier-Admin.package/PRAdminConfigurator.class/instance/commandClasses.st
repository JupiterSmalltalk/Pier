private
commandClasses
	^ PRCommand withAllConcreteClasses collect: [ :each | each name ]