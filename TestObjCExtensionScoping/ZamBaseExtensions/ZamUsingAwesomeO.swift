//
//  ZamUsingAwesomeO.swift
//  TestSwiftExtensionScoping
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import ZeeBaseFramework

public func zamAwesome() {
  let o = AwesomeO() // ObjC object!
  o.printCool()
  o.privateCool()
}


fileprivate extension AwesomeO {
  
  func privateCool() {
    print("Private cool from Zam")
  }
}
