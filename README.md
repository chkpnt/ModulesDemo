# Using 3rd party vendored libs from an static framework written in Swift

If you are using an application target, you can simply use a bridging header to access a 3rd party library.
But if you want to wrap that 3rd party library in a static framework, you have to take a different approach.

A module map is used to specify the module's available code.
You can simply write an umbrella header to import the required headers, so Xcode generates a module map file.
Alternatively, you can also write an explicit module map (build setting `MODULEMAP_FILE`).
But this way, the 3rd party library isn't only available within the static framework, it is exposed to the framework's consumers, too.
If you only want to use the 3rd party library within the framework, it is better to use a private module, which can be imported within the framework.

Ensure, that `OTHER_LIBTOOLFLAGS` contains the libraries you want to be statically linked to your framework.
