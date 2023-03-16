//
//  Router.swift
//  CryptoViper
//
//  Created by Ali serkan Boyracı  on 16.03.2023.
//

import Foundation
// when app opens, you must show the

// Class, Protocol
// Entrypoint:  to start where

protocol AnyRouter {
    static func startExecution() -> AnyRouter      // to reach other swift files easily
}

class CryptoRouter : AnyRouter {
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        return router
    }
}
    

