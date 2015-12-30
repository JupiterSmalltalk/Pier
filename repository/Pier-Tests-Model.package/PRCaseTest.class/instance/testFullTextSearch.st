tests-visiting
testFullTextSearch
	| matches |
	matches := self root fullTextSearch
		subString: 'title';
		caseSensitive: true;
		contents.
	self assert: matches size = 0.

	matches := self root fullTextSearch
		subString: 'Title';
		caseSensitive: true;
		contents.
	self assert: matches size = 1.
	self assert: matches first = self structure.

	matches := self root fullTextSearch
		subString: 'title';
		caseSensitive: false;
		contents.
	self assert: matches size = 1.
	self assert: matches first = self structure.

	matches := self root fullTextSearch
		subString: 'list-element';
		caseSensitive: true;
		contents.
	self assert: matches size = 0.

	matches := self root fullTextSearch
		subString: 'List-Element';
		caseSensitive: true;
		contents.
	self assert: matches size = 1.
	self assert: matches first = self structure.

	matches := self root fullTextSearch
		subString: 'list-element';
		caseSensitive: false;
		contents.
	self assert: matches size = 1.
	self assert: matches first = self structure