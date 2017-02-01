dependencies
naFileUpload: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'NAFileUpload'
        with: [ 
          spec
            repository: 'http://www.squeaksource.com/fileupload';
            version: #'bleedingEdge' ].
      spec
        project: 'NAFileUpload-Nginx-Component'
          copyFrom: 'NAFileUpload'
          with: [ spec loads: #('NAFileUpload-Nginx-Component') ];
        project: 'NAFileUpload-Component'
          copyFrom: 'NAFileUpload'
          with: [ spec loads: #('NAFileUpload-Component') ] ]