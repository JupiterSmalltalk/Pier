visiting-document
visitUnorderedList: anUnorderedList
	latex environment: 'itemize' do: [ super visitUnorderedList: anUnorderedList ]