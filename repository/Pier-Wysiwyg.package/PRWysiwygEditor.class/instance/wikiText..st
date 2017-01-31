accessing
wikiText: theWikiText
	wikiText := theWikiText.
	(self onFormSubmit notNil and: [ self requestContext request isPost ]) ifTrue: [
		"Magritte works out if the submission was saved or cancelled"
		self onFormSubmit value: theWikiText ]