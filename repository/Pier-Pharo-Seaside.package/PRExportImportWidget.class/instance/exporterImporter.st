accessing
exporterImporter
	^ exporterImporter ifNil: [ 
		self exporterImporter: PRReferenceStreamExporterImporter new.
		self exporterImporter ]