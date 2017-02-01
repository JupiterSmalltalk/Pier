accessing
loginComponent
  ^ loginComponent
    ifNil: [ 
      | loginCommand |
      loginCommand := PULogin new
        setContext: self pierComponent context;
        yourself.
      loginComponent := loginCommand asComponent
        onAnswer: [ :aLoginCommand | self handleLoginAnswer: aLoginCommand ];
        yourself ]