accessing
magritteDescription
	^ MAContainer new
		add: (MAStringDescription new
			label: 'Base Directory';
			accessor: #baseDirectoryPath;
			comment: 'Defines the base-directory where the files are stored. If this field is left empty, it default to a subdirectory of of the current image-location.';
			yourself);
		add: (MAStringDescription new
			label: 'Base URL';
			accessor: #baseUrl;
			comment: 'Defines the base-URL where the files are served from, when using an external web server. if this field is left empty, files are served through the image.';
			yourself);
		yourself