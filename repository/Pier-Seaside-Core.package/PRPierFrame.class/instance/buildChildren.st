private
buildChildren
	^ Set new
		addAll: (self componentsOf: self environment);
		addAll: (self componentsOf: self structure);
		yourself