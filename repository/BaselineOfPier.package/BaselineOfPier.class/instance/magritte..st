dependencies
magritte: spec
	spec
		for: #common
		do: [ 
			spec
				project: 'Magritte3 Core'
					with: [ 
							spec
								className: #ConfigurationOfMagritte3;
								versionString: #stable;
								loads: #('Core');
								repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ];
				project: 'Magritte3 Tests'
					with: [ 
							spec
								className: #ConfigurationOfMagritte3;
								versionString: #stable;
								loads: #('Tests');
								repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ];
				project: 'Magritte3 Seaside'
					with: [ 
							spec
								className: #ConfigurationOfMagritte3;
								versionString: #stable;
								loads: #('Seaside');
								repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ] ]