accessing-dynamic
document
	^ PRDocument new
		add: (PRParagraph with: (PRText content: self author));
		add: (PRPreformatted withAll: (self note lines
			collect: [ :each | PRText content: each ]));
		yourself