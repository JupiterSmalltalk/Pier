rendering
renderLabel: aString class: aCssString structure: aStructure on: html
	| active |
	active := self context structure = aStructure.
	(active or: [ aStructure isNil ])
		ifTrue: [
			html span
				class: aCssString;
				class: 'active' if: active;
				with: aString ]
		ifFalse: [
			html anchor
				class: aCssString;
				title: aStructure title;
				goto: (self context structure: aStructure);
				with: aString ].
	html text: ' '