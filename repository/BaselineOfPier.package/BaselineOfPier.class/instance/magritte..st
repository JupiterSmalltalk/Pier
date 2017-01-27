dependencies
magritte: spec
	spec
		for: #common
		do: [ spec
				configuration: 'Magritte3'
				with: [ spec
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ].
			spec
				project: 'Magritte3 Core' copyFrom: 'Magritte3' with: [ spec loads: #('Core') ];
				project: 'Magritte3 Tests' copyFrom: 'Magritte3' with: [ spec loads: #('Tests') ];
				project: 'Magritte3 Seaside' copyFrom: 'Magritte3' with: [ spec loads: #('Seaside') ] ]