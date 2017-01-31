private
recursiveHandersOn: aDispatcher path: path do: aBlock
  aDispatcher handlers
    keysAndValuesDo: [ :key :value | 
      | handlerPath |
      handlerPath := path , '/' , key.
      aBlock value: value value: handlerPath.
      value isDispatcher
        ifTrue: [ self recursiveHandersOn: value path: handlerPath do: aBlock ] ]