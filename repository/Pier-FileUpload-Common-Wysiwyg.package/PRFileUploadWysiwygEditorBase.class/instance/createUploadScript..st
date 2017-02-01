accessing
createUploadScript: anHtmlDocument
  uploadScript := String
    streamContents: [ :stream | 
      anHtmlDocument scriptGenerator loadScripts
        do: [ :each | each javascriptOn: stream ] ]