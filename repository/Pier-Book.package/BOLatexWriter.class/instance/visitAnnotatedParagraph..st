visiting-document
visitAnnotatedParagraph: aParagraph
	latex
		environment: aParagraph annotation
		do: [ super visitAnnotatedParagraph: aParagraph ]