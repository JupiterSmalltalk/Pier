rendering
renderItem: aClass on: html
	html anchor
		title: aClass label;
		class: 'active' if: (self isActive: aClass);
		goto: (self context view: aClass);
		with: (self labelFor: aClass)