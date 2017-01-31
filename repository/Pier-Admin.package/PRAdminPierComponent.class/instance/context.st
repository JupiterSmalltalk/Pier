accessing
context
	"Answer the admin context, ensuring creation of standard Seaside urls (not RESTful urls) within pier admin"
	^ context ifNil: [ context := PRAdminContext kernel: self kernel ]