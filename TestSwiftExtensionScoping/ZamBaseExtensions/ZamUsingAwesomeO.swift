//
//  ZamUsingAwesomeO.swift
//  TestSwiftExtensionScoping
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import ZeeBaseFramework

public func zamAwesome() {
  let o = AwesomeO()
  o.printCool() // prints 'Cooler from Zam'
    // In here we don't see the extension from ZumBaseExtension
}
