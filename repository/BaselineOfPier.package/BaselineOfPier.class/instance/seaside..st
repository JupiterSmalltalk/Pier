dependencies
seaside: spec
	spec
		for: #common
		do: [ 
			spec
				project: 'Seaside Zinc'
					with: [ 
							spec
								className: #ConfigurationOfSeaside3;
								versionString: #stable;
								loads: #('Zinc');
								repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
				project: 'Seaside Javascript'
					with: [ 
							spec
								className: #ConfigurationOfSeaside3;
								versionString: #stable;
								loads: #('JQuery' 'JQueryUI');
								repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
				project: 'Seaside Javascript Tests'
					with: [ 
							spec
								className: #ConfigurationOfSeaside3;
								versionString: #stable;
								loads: #('JQuery Tests' 'JQueryUI Tests');
								repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ] ]