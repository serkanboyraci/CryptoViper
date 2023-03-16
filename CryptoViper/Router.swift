//
//  Router.swift
//  CryptoViper
//
//  Created by Ali serkan Boyracı  on 16.03.2023.
//

import Foundation
import UIKit
// when app opens, you must show the

// Class, Protocol
// Entrypoint:  to start where
typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry : EntryPoint? {get}
    static func startExecution() -> AnyRouter      // to reach other swift files easily
}

class CryptoRouter : AnyRouter {
    
    var entry : EntryPoint?
    
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        
        var view : AnyView = CryptoViewController()
        var presenter : AnyPresenter = CryptoPresenter()
        var interactor : AnyInteractor = CryptoInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
    

