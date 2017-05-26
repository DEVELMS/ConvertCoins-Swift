//
//  ConvertionProtocols.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

protocol ConvertionViewProtocol: class {
    
    var presenter: ConvertionPresenterProtocol? { get set }
    
    func showConvertedValue(value: String)
    func changeDisplayedCoins(coinBase: String, coinToConvert: String)
    
    // PRESENTER -> VIEW
    //example
}

protocol ConvertionWireFrameProtocol: class {
    
    func present(at window: UIWindow?)
    
    // PRESENTER -> WIREFRAME
    func presentSettingsScreen()
}

protocol ConvertionPresenterProtocol: class {
    
    var view: ConvertionViewProtocol? { get set }
    var interactor: ConvertionInteractorInputProtocol? { get set }
    var wireFrame: ConvertionWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
    func presentSettings()
}

protocol ConvertionInteractorOutputProtocol: class {
    
    // INTERACTOR -> PRESENTER
    func didRetrieveCoins(_ coins: (baseCoin: CoinEntity, convertedCoin: CoinEntity))
}

protocol ConvertionInteractorInputProtocol: class {
    
    var presenter: ConvertionInteractorOutputProtocol? { get set }
    var dataManager: ConvertionDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveCoins()
}

protocol ConvertionDataManagerOutputProtocol: class {
    
}

protocol ConvertionDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
    func retrieveCoins() -> (baseCoin: CoinEntity, convertedCoin: CoinEntity)?
}
