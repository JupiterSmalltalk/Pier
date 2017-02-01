dependencies
seaside: spec
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Seaside3'
        with: [ 
          spec
            loads: #('Core');
            repository: 'github://JupiterSmalltalk/Seaside/repository' ].
      spec
        project: 'Seaside Zinc'
          copyFrom: 'Seaside3'
          with: [ spec loads: #('Zinc') ];
        project: 'Seaside Javascript'
          copyFrom: 'Seaside3'
          with: [ spec loads: #('JQuery' 'JQueryUI') ];
        project: 'Seaside Javascript Tests'
          copyFrom: 'Seaside3'
          with: [ spec loads: #('JQuery Tests' 'JQueryUI Tests') ];
        project: 'Seaside RSS'
          copyFrom: 'Seaside3'
          with: [ spec loads: #('RSS-Core') ] ]