dependencies
magritte: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'Magritte3'
        with: [ 
          spec
            versionString: #'stable';
            repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main' ].
      spec
        project: 'Magritte3 Core'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Core') ];
        project: 'Magritte3 Tests'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Tests') ];
        project: 'Magritte3 Seaside'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Seaside') ].
      spec
        configuration: 'Magritte3AddOns'
        with: [ 
          spec
            versionString: #'stable';
            repository:
                'http://smalltalkhub.com/mc/Magritte/Magritte3Addons/main' ].
      spec
        project: 'Magritte-Json'
        copyFrom: 'Magritte3AddOns'
        with: [ spec loads: #('Magritte-Json') ] ]