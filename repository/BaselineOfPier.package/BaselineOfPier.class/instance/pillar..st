dependencies
pillar: spec
  spec
    for: #'common'
    do: [ 
      spec
        project: 'Pillar Core'
          with: [ 
              spec
                className: #'ConfigurationOfPillar';
                versionString: '1.1.2';
                loads: #('Pillar-Model');
                repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main' ];
        project: 'Pillar Tests'
          with: [ 
              spec
                className: #'ConfigurationOfPillar';
                versionString: '1.1.2';
                loads: #('Pillar-Tests-Model');
                repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main' ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Pillar'
        with: [ spec repository: 'github://JupiterSmalltalk/Pillar:gs_master/repository' ].
      spec
        project: 'Pillar Core'
          copyFrom: 'Pillar'
          with: [ spec loads: #('Pillar-Model' 'Pillar-PetitPillar') ];
        project: 'Pillar Tests'
          copyFrom: 'Pillar'
          with: [ spec loads: #('Pillar-Tests-Model' 'Pillar-Tests-PetitPillar') ] ]