*pier-documents-accessing
documents
	"Answer some additional documents to be displayed and edited using the PRDocumentWidget."
	
	^ self propertyAt: #documents ifAbsentPut: [ Dictionary new ]