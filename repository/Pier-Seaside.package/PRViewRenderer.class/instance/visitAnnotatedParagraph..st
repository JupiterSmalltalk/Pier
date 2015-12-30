visiting-document
visitAnnotatedParagraph: anObject
	html paragraph
		class: 'annotated';
		class: anObject annotation;
		with: [ self visitAll: anObject children ]