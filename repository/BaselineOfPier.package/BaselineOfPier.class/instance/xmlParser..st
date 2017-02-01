dependencies
xmlParser: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'XMLParser'
        with: [ 
          spec
            repository:
                'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main';
            version: '3.0.0' ] ]