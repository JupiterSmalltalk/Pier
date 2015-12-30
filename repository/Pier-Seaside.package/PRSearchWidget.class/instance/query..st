accessing
query: aString
	query := aString.
	context := self context 
		structure: self context structure
		view: PRSearchView.
	context command viewComponent 
		root: self searchRoot;
		query: aString;
		hideForm;
		refresh.
	self context: context