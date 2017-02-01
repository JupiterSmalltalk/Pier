events
doValidate
  super doValidate.
  self
    user:
      (self kernel users
        detect: [ :each | each name = self username and: [ each validatePassword: self password ] ]
        ifNone: [ self invalidLogin ])