rendering
renderItem: aClass on: html
	html anchor
		class: 'active' if: (self isActive: aClass);
		accessKey: aClass accessKey;
		goto: (self context
			structure: self context structure
			command: aClass new);
		with: (self labelFor: aClass)