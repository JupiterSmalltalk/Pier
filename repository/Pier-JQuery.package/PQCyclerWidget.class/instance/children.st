accessing
children
	^ self sourceChildren 
		inject: OrderedCollection new 
		into: [:all :each | all addAll: (each componentsIn: self context). all]