I am an abstract superclass of the command pattern in Pier. All modifications to the model have to be done through subclasses of myself, else they do not get properly logged with the persistency mechanism. I hold the context in which the receiver is executed in the instance variable context. To modify the resulting context, create a copy of the current context and store it in the instance variable answer.

The following event-handlers are called when executing an action in the given order. Do override these messages to customize the command, never override the other internal methods:
- Override the message ==#doValidate== to check the valid setup of the command and to raise exceptions in case any precondition isn't met. Speak here or forever have your peace! Don't change the model in there.
- Override the message ==#doExecute== to execute the actual command. Do not raise exceptions in there, catch all the problems in ==#doValidate==.
- Override the message ==#doPersistency== to save the command that has been just executed with the current persistency strategy. Most commands don't need to override this message and just stick with the default behavior.
- Override the message ==#doAnswer== to create the answer context. Most commands don't need to override this message and just stick with the default behavior.

Do not play with funny jumpy things, such as resumable exceptions or continuations, inside the code of the command hierarchy or you will very likely run into severe problems.