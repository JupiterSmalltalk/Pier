dependencies
pillar: spec
  spec
    for: #'pharo'
    do: [ 
      spec
        configuration: 'Pillar'
        with: [ 
          spec
            repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main';
            versionString: '4.0.4' ].
      spec
        project: 'Pillar Core'
          copyFrom: 'Pillar'
          with: [ spec loads: #('Pillar-Model' 'Pillar-PetitPillar') ];
        project: 'Pillar Tests'
          copyFrom: 'Pillar'
          with: [ spec loads: #('Pillar-Tests-Model' 'Pillar-Tests-PetitPillar') ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Pillar'
        with: [ spec repository: 'github://JupiterSmalltalk/Pillar:gs_master/repository' ].
      spec
        project: 'Pillar Core'
          copyFrom: 'Pillar'
          with: [ 
              spec
                loads:
                  #('Pillar-Model' 'Pillar-PetitPillar' 'Pillar-ExporterPillar' 'Pillar-ExporterText') ];
        project: 'Pillar Tests'
          copyFrom: 'Pillar'
          with: [ 
              spec
                loads:
                  #('Pillar-Tests-Model' 'Pillar-Tests-PetitPillar' 'Pillar-Tests-ExporterPillar' 'Pillar-Tests-ExporterText') ] ]