dependencies
naFileUpload: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'NAFileUpload'
        with: [ 
          spec
            repository: 'github//JupiterSmalltalk/NAFileUpload/repository';
            version: #'stable' ].
      spec
        project: 'NAFileUpload-Nginx-Component'
          copyFrom: 'NAFileUpload'
          with: [ spec loads: #('NAFileUpload-Nginx-Component') ];
        project: 'NAFileUpload-Component'
          copyFrom: 'NAFileUpload'
          with: [ spec loads: #('NAFileUpload-Component') ] ]