registration
registerAsApplication: aString kernel: aKernel
	"self registerAsApplication: 'pier' kernel: (PRKernel instanceNamed: 'pier')"

	| app |
	app := WAAdmin register: self asApplicationAt: aString.
	self configureApplication: app.
	app preferenceAt: #kernel put: aKernel.
	^ app