dependencies
bootstrap: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'Bootstrap'
        with: [ 
          spec
            versionString: '0.16.0';
            repository:
                'http://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main' ].
      spec
        configuration: 'BootstrapMagritte'
        with: [ 
          spec
            versionString: '0.2.3';
            repository:
                'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main' ] ]