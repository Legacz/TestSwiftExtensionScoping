<h2>TestSwiftExtensionScoping
  <img src="https://avatars2.githubusercontent.com/u/7712913?v=4&s=200"
       align="right" width="128" height="128" />
</h2>

The cool thing about (native) Swift extensions is, that unlike Objective-C
categories, they are completely isolated and do not interfere with
extensions in other frameworks.

They do not interfere which is why prefixing methods is not necessary anymore.
It doesn't even matter whether the extensions are public or not.
(though there is a scoping bug in the compiler when mixing modules, but that
 doesn't matter for the demo)

Now the problem with extending Objective-C objects is that 'Swift extensions'
become 'Objective-C categories' and in consequence inherit the overriding issue
from them.
Essentially the method names become global selectors and if you redefine such,
it matters on module load order which extension wins.

I.e. this one does *not* provide proper extension scoping, because 'extensions'
of 'Objective-C' objects (mostly) become 'Objective-C categories'.

Now the fun part begins. If the extension is fileprivate, Swift does the
proper scoping, even on ObjC objects. Checkout `ZamUsingAwesomeO` for this.
One would awesome that the same is true for `internal`, but it actually isn't,
the extension is converted into a category again.

There are three frameworks in this demo:
- ZeeBaseFramework - defines a NSObject derived class (`@objc`), `AwesomeO`
- ZumBaseExtension - extends AwesomeO and adds a method `printCool`, which is 
used in the framework
- ZamBaseExtension - extends AwesomeO with the same method and a different imp

And then there is a TestSwiftExtensionScoping App which uses both, Zum and Zam.
When running them, you'll see that 'wrong' implementations are picked.
The 'overriding' issue you had w/ categories is still here.

## Summary

- extensions on native Swift types scope as expected
- extensions on Objective-C classes *mostly* become categories and hence do
  scope selectors globally
  - unless the extension is private, in this case the local implementation is
    picked (a (useful) bug?)

As all bridges, the Swift-ObjC one is full of surprises :-)

### Contact

[@helje5](http://twitter.com/helje5) | helge@alwaysrightinstitute.com

![](http://www.alwaysrightinstitute.com/images/ARI-symbol-logo.png)