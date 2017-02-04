visiting-document
visitOrderedList: anOrderedList
	latex environment: 'enumerate' do: [ super visitOrderedList: anOrderedList ]