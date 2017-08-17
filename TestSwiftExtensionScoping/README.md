# TestSwiftExtensionScoping

The cool thing about (pure) Swift extensions is, that unlike Objective-C
categories, they are completely isolated and do not interfere with
extensions in other frameworks.

They do not interfere which is why prefixing methods is not necessary anymore.
It doesn't even matter whether the extensions are public or not.
(though there is a scoping bug in the compiler when mixing modules, but that
 doesn't matter for the demo)

There are three frameworks in this demo:
- ZeeBaseFramework - defines a base type, `AwesomeO`
- ZumBaseExtension - extends AwesomeO and adds a method `printCool`, which is 
                     used in the framework
- ZamBaseExtension - extends AwesomeO with the same method and a different imp

And then there is a TestSwiftExtensionScoping App which uses both, Zum and Zam.
When running them, you'll see that the right implementations are always picked.
The 'overriding' issue you had w/ categories is not there anymore.

Note: there is another test using Objective-C objects.
