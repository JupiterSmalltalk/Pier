updating
updateRoot: aHtmlRoot
	"Add universal edit button: http://universaleditbutton.org/."

	| editContext |
	super updateRoot: aHtmlRoot.
	editContext := self context command: self context structure
		editCommandClass new.
	editContext isValid ifTrue: [
		aHtmlRoot link
			beAlternate;
			type: 'application/x-wiki';
			title: editContext command label;
			url: (editContext urlOn: (self rendererClass
				context: aHtmlRoot context)) ]