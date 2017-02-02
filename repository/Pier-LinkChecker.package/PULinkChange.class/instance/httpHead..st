private
httpHead: aString
	"Answer an array with response code and effective URL, or nil."
        | response | 
                response := ZnClient new 
                url: aString trimBoth; 
                timeout: 5; 
                method: #HEAD; 
                ifFail: [ ^Array with: 404 with: aString ]; 
                executeWithTimeout; 
                response. 
        ^ Array with: response code with: (response headers at: 'Location' ifAbsent: [aString])	.