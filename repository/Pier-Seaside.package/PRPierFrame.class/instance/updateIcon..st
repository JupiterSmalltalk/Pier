updating-extras
updateIcon: aHtmlRoot
	| structure |
	structure := self structure icon ifNil: [ ^ self ].
	structure file isNil ifTrue: [ ^ self ].
	aHtmlRoot link
		beShortcutIcon;
		type: structure file mimetype;
		url: structure file url