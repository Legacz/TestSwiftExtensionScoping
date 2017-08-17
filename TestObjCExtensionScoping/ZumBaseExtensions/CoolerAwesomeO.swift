//
//  CoolerAwesomeO.swift
//  TestSwiftExtensionScoping
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import ZeeBaseFramework

public extension AwesomeO {

  func printCool() {
    print("Cool from Zum")
  }
  
}

internal extension AwesomeO {
  
  func thisDoesNotPolluteTheMethodNamespaceAnywhereElse() {
    // this is pure local. awesome.
  }
  
  internal func privateCool() {
    print("Private cool from Zum")
  }
}
