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
        project: 'Magritte Core'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Core') ];
        project: 'Magritte Tests'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Tests') ];
        project: 'Magritte Seaside'
          copyFrom: 'Magritte3'
          with: [ spec loads: #('Seaside') ] ]