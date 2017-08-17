//
//  ZumUsingAwesomeO.swift
//  TestSwiftExtensionScoping
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import ZeeBaseFramework

public func zumAwesome() {
  let o = AwesomeO()
  o.printCool() // prints 'Cool from Zum'
    // In here we never see the extension from ZamBaseExtension
}

