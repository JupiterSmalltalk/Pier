dependencies
topFeeder: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'TopFeeder'
        with: [ 
          spec
            repository:
                'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main';
            version: '1.0.0';
            loads: #('Pier') ] ]