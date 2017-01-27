baselines
baseline: spec
<baseline>
	self
		pillar: spec;
		magritte: spec;
		seaside: spec.
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'Pier-Model' with: [ spec requires: #('Magritte3 Core' 'Pillar Core') ];
				package: 'Pier-Tests-Model'
					with: [ spec requires: #('Pier-Model' 'Magritte3 Tests' 'Pillar Tests') ];
				package: 'Pier-Security' with: [ spec requires: #('Pier-Seaside') ];
				package: 'Pier-Seaside'
					with: [ spec requires: #('Pier-Model' 'Magritte3 Seaside' 'Seaside Javascript') ];
				package: 'Pier-Tests-Seaside-Model'
					with: [ spec requires: #('Pier-Tests-Model' 'Pier-Seaside' 'Seaside Javascript Tests') ];
				package: 'Pier-Tests-Security' with: [ spec requires: #('Pier-Security') ];
				yourself.
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('Pier-Model' 'Pier-Security' 'Pier-Seaside');
				group: 'Tests'
					with: #('Core' 'Pier-Tests-Model' 'Pier-Tests-Security' 'Pier-Tests-Seaside-Model');
				yourself ].
	spec
		for: #pharo
		do: [ spec
				project: 'Seaside Zinc'
					copyFrom: 'Seaside Javascript'
					with: [ spec loads: #('Zinc') ];
				package: 'Pier-Seaside'
					with: [ spec
						requires: #('Seaside Zinc');
						postLoadDoIt: #startSeasideAndRegisterPier ] ].
	spec
		for: #squeakCommon
		do: [ spec
				package: 'Pier-Model' with: [ spec includes: #('Pier-Pharo-Model') ];
				package: 'Pier-Seaside' with: [ spec includes: #('Pier-Pharo-Seaside') ];
				package: 'Pier-Pharo-Model' with: [ spec requires: #('Pier-Model') ];
				package: 'Pier-Pharo-Seaside' with: [ spec requires: #('Pier-Seaside') ];
				package: 'Pier-Pharo-Persistency' with: [ spec requires: #('Pier-Model') ];
				package: 'Pier-Tests-Pharo-Persistency'
					with: [ spec requires: #('Pier-Tests-Model' 'Pier-Pharo-Persistency') ];
				yourself.
			spec
				group: 'Core' with: #('Pier-Pharo-Persistency');
				group: 'Tests' with: #('Pier-Tests-Pharo-Persistency');
				yourself ].
	spec
		for: #gemstone
		do: [ spec
				package: 'Pier-Model' with: [ spec includes: #('Pier-GemStone-Model') ];
				package: 'Pier-Seaside' with: [ spec includes: #('Pier-GemStone-Seaside') ];
				package: 'Pier-GemStone-Model' with: [ spec requires: #('Pier-Model') ];
				package: 'Pier-GemStone-Seaside' with: [ spec requires: #('Pier-Seaside') ];
				yourself ]