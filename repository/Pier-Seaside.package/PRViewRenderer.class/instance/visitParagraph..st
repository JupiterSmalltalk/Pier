visiting-document
visitParagraph: anObject
	"Rendering paragraphs is tricky, when requiring (mostly) valid XHTML and full accessibility.	
# Paragraphs appearing within the environment are ignored alltogether.
# Other paragraphs are created using the normal XHTML paragraph markup."

	withinContent
		ifFalse: [ ^ super visitParagraph: anObject ].
	html paragraph: [ super visitParagraph: anObject ]