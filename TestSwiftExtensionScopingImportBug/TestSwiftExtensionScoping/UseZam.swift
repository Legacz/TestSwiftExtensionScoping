//
//  UseZam.swift
//  TestSwiftExtensionScopingImportBug
//
//  Created by Helge Hess on 17.08.17.
//  Copyright © 2017 ZeeZide GmbH. All rights reserved.
//

import ZeeBaseFramework
import ZamBaseExtensions

func zamTest() {
  // Says: ambiguous use of printCool
  AwesomeO().printCool()
}
