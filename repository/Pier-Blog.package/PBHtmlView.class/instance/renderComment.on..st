rendering-meta
renderComment: anEntry on: html
	| comments |
	self context structure isBlog ifFalse: [ ^ self ].
	comments := anEntry allCommentsIn: self context.
	html anchor
		class: 'comment';
		goto: (self context
			structure: (self context structure isBlog
				ifTrue: [ anEntry ]
				ifFalse: [ anEntry parent ]));
		fragment: 'comments';
		with: (comments isEmpty ifTrue: [ '' ] ifFalse: [ comments size pluralize: ' comment' ]).
	html text: ' '