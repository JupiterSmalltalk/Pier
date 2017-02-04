visiting-document
visitPreformatted: aPreformatted
	latex tag: 'Needspace'; curly: [ latex print: (aPreformatted children size min: 3); tag: 'baselineskip' ]; lf.
	latex environment: 'lstlisting' do: [
		aPreformatted children 
			do: [ :each | stream nextPutAll: (self convertHtmlEntities: each text); nextPut: Character lf ] ]