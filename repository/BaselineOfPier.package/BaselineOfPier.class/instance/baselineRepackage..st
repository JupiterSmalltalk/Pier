baselines
baselineRepackage: spec

	self
		pillar: spec;
		magritte: spec;
		seaside: spec.
	spec
		for: #common
		do: [ spec
				package: 'Pier-Model-Command' with: [ spec requires: #('Pier-Model-Visitor') ];
				package: 'Pier-Model-Document' with: [ spec requires: #('Pillar Core') ];
				package: 'Pier-Model-Exception' with: [ spec requires: #('Magritte Core') ];
				package: 'Pier-Model-Kernel'
					with: [ spec
						requires:
							#('Pier-Model-Command' 'Pier-Model-Document' 'Pier-Model-Exception' 'Pier-Model-Magritte' 'Pier-Model-Persistence' 'Pier-Model-Structure' 'Pier-Model-Utilities' 'Pier-Model-Visitor') ];
				package: 'Pier-Model-Magritte' with: [ spec requires: #('Magritte Core') ];
				package: 'Pier-Model-Persistence' with: [ spec requires: #('Pillar Core') ];
				package: 'Pier-Model-Structure' with: [ spec requires: #('Pillar Core') ];
				package: 'Pier-Model-Utilities' with: [ spec requires: #('Pier-Model-Structure') ];
				package: 'Pier-Model-Visitor' with: [ spec requires: #('Pillar Core') ].
			spec
				package: 'Pier-Seaside-Core'
					with: [ spec
						requires:
							#('Pier-Seaside-Libraries' 'Pier-Seaside-Magritte' 'Pier-Seaside-Model' 'Pier-Seaside-View' 'Pier-Seaside-Visitors' 'Pier-Seaside-Widgets' 'Magritte Seaside' 'Seaside Javascript') ];
				package: 'Pier-Seaside-Libraries';
				package: 'Pier-Seaside-Magritte' with: [ spec requires: #('Pier-Model-Magritte') ];
				package: 'Pier-Seaside-Model'
					with: [ spec requires: #('Pier-Model-Command' 'Pier-Model-Structure') ];
				package: 'Pier-Seaside-View' with: [ spec requires: #('Magritte Seaside') ];
				package: 'Pier-Seaside-Visitors' with: [ spec requires: #('Pillar Core') ];
				package: 'Pier-Seaside-Widgets' with: [ spec requires: #('Magritte Seaside') ].
			spec
				package: 'Pier-Security-Command' with: [ spec requires: #('Pier-Model-Command') ];
				package: 'Pier-Security-Model'
					with: [ spec requires: #('Pier-Security-Command' 'Pillar Core') ];
				package: 'Pier-Security-Widgets' with: [ spec requires: #('Pier-Security-Model') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core'
					with: #('Pier-Model-Kernel' 'Pier-Security-Model' 'Pier-Security-Widgets' 'Pier-Seaside-Core');
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
				package: 'Pier-Model-Structure' with: [ spec includes: #('Pier-GemStone-Model') ];
				package: 'Pier-Seaside-Core' with: [ spec includes: #('Pier-GemStone-Seaside') ];
				package: 'Pier-GemStone-Model' with: [ spec requires: #('Pier-Model-Structure') ];
				package: 'Pier-GemStone-Seaside' with: [ spec requires: #('Pier-Seaside-Widgets') ];
				yourself ]