//
//  Presenter.swift
//  CryptoViper
//
//  Created by Ali serkan Boyracı  on 16.03.2023.
//

import Foundation

// Class, Protocols
// Talks to -> interator, router, view
enum NetworkError : Error {
    case NetworkFailed
    case ParsingFailed
}




protocol AnyPresenter {
    var router : AnyRouter? {get set} //get: only readable       get set:read and change
    var interactor : AnyInteractor? {get set}
    var view : AnyView? {get set}
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>)
    
}

class CryptoPresenter : AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        // upload view
        switch result {
        case .success(let cryptos):
            // view.update
            print("update")
        case .failure(let error):
            // view.update error
            print("error")
        }
    }
    
    
}
