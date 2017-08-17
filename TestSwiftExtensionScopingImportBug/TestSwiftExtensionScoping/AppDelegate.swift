//
//  AppDelegate.swift
//  TestSwiftExtensionScoping
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import UIKit

import ZumBaseExtensions
import ZamBaseExtensions

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    print("Should print Zum:")
    zumAwesome()
    print("----")
    
    print("Should print Zam:")
    zamAwesome()
    print("----")
    
    return true
  }

}
