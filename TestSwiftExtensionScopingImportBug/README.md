# TestSwiftExtensionScoping

The cool thing about (pure) Swift extensions is, that unlike Objective-C
categories, they are completely isolated and do not interfere with
extensions in other frameworks.

They do not interfere which is why prefixing methods is not necessary anymore.
It doesn't even matter whether the extensions are public or not.


Though there is a scoping bug in the compiler when mixing modules, which this
demo shows:
Essentially, even if a file doesn't import ZumBaseExtensions, its extensions
are visible and result in an ambiguous implementation compiler warning.

BTW: Same in Swift 4 beta.

