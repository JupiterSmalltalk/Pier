visiting-document
visitHeader: anObject
	"override as in the editor we don't care about the named anchor"
	html heading level: anObject level; with: [
		self visitDocumentGroup: anObject ]