//
//  SwiftClassInStaticModule.swift
//  ModulesDemoStaticLib
//
//  Created by Gregor Dschung on 07.07.18.
//  Copyright © 2018 Gregor Dschung. All rights reserved.
//

import ModulesDemoStaticLibPrivate

public class SwiftClassInStaticModule {

    public let someString: String = "This string is defined in a Swift class in ModulesDemoStaticLib"
    
    public let stringFromObjcClass: String = ObjcClassInStaticModule().someOtherString
    
    public let stringFromThirdPartyLib: String = String(cString: someThirdPartyString)
    
    public init() {}
    
}
