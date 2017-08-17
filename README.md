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

This repo has both variants: one which uses a native Swift type, and one which
uses a Swift subclass of an Objective-C type.

## Summary

- extensions on native Swift types dispatch in isolation
- extensions on Objective-C classes *mostly* become categories and hence do
  scope selectors globally
  - unless the extension is private, in this case the local implementation is
    picked (a (useful) bug?)

As all bridges, the Swift-ObjC one is full of surprises :-)

## P.S. Objective-C 'extensions'

Those are just categories and behave like such (plus some compiler extras).
They have nothing to do with native Swift extensions and how such are
dispatched.


### Contact

[@helje5](http://twitter.com/helje5) | helge@alwaysrightinstitute.com

![](http://www.alwaysrightinstitute.com/images/ARI-symbol-logo.png)