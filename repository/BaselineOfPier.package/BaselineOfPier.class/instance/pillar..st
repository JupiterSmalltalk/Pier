dependencies
pillar: spec
	spec
		for: #common
		do: [ 
			spec
				project: 'Pillar Core'
					with: [ 
							spec
								className: #ConfigurationOfPillar;
								versionString: '1.1.2';
								loads: #('Pillar-Model');
								repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main' ];
				project: 'Pillar Tests'
					with: [ 
							spec
								className: #ConfigurationOfPillar;
								versionString: '1.1.2';
								loads: #('Pillar-Tests-Model');
								repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main' ] ]