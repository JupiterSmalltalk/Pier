I am the context in which a user is browsing the system. I hold all the information any part of Pier might be interested in: the currently used kernel, the structure that is currently displayed, the command that is being executed and the user currently logged in.

I am an immutable object. Users should never try to modify me. Instead use the modification methods that return a copy of myself.