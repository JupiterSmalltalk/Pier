rendering
renderProcessingCallbackOn: html
  "use an ajax callback to allow us to parse the blog post html on the client"

  self renderTranslateBlogPostsJSOn: html.
  html document
    addLoadScript:
      (html jQuery ajax
        script: [ :s | 
          importedBlog := self retrieveBlogFromUrl: self blogUrl.
          importedBlog isNil
            ifTrue: [ s << (JSStream on: 'processingComplete()') ]
            ifFalse: [ 
              | blogItemsJS blogItemsContent |
              blogItemsContent := importedBlog items
                collect: [ :each | 
                  each content isEmptyOrNil
                    ifTrue: [ each textualDescription ]
                    ifFalse: [ each content ] ].
              blogItemsJS := JSStream new
                nextPutAll: 'var translatedPosts = translateBlogPosts(';
                nextPutAll: blogItemsContent asJson;
                nextPutAll: ');';
                nextPutAll: 'postTranslatedPosts(translatedPosts);'.
              s << blogItemsJS ] ]).
  html
    script:
      (((html jQuery post
        callback: [ :blogPosts | 
              importedBlog items
                withIndexDo: [ :each :index | each content: (blogPosts at: index) ].
              self importBlog: importedBlog ]
          json: (JSStream on: 'translatedPosts');
        script: [ :s | s << (JSStream on: 'processingComplete()') ])
        asFunction: #('translatedPosts')) assignLocalTo: 'postTranslatedPosts').
  html
    script:
      ((html javascript
        callback: [ 
          self isSuccessful
            ifTrue: [ self informSuccess: self successMessage ]
            ifFalse: [ self informError: self errorMessage ].
          self answer: self isSuccessful ])
        asFunction assignLocalTo: 'processingComplete')