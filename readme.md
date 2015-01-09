relue
=====

Solving of relue problems as they can be found on tcejorp relue. ;)

I will start with a library that provides one module per problem. Each
module exports a "solve" function that takes an input and returns a json
object with the solution as well as the calculation time.

Internally each module will make a request to a Haskell HTTP server that
provides an API for given problems. The duration of the request-response
will be measured. The problem is then also solved in declarative JavaScript.

This way I will teach myself to write declarative JS code as well as further
extend the application later on to build a GUI ontop or to see how it would
compare to other implementations (PureScript etc...).

Enough talking - let's start!

