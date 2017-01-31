instance creation
structure: structure methods: methods exporter: exporter on: stream
	^ self basicNew
		initializeWithStructure: structure methods: methods exporter: exporter stream: stream
		yourself