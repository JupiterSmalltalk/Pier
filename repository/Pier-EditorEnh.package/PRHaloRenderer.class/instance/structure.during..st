public
structure: aStructure during: aBlock
	html div
		class: 'pr-halo';
		script: PRHaloShine new;
		title: (self titleFor: aStructure);
		with: [
			html div
				class: 'pr-halo-tools';
				with: [ self renderButtonsFor: aStructure in: self context ].
			super structure: aStructure during: aBlock ]