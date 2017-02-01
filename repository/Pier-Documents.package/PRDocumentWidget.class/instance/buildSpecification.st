private
buildSpecification
	^ self descriptionDefault
		accessor: (PRDocumentWidgetAccessor on: #documents key: self owner name);
		yourself