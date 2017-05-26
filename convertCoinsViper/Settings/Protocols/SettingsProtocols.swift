//
//  SettingsProtocols.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

protocol SettingsViewProtocol: class {
    
    var presenter: SettingsPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    //example
}

protocol SettingsWireFrameProtocol: class {
    
    func present(at: UINavigationController)
}

protocol SettingsPresenterProtocol: class {
    
    var view: SettingsViewProtocol? { get set }
    var wireFrame: SettingsWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
}

protocol SettingsInteractorOutputProtocol: class {
    
    // INTERACTOR -> PRESENTER
    //example
}

protocol SettingsInteractorInputProtocol: class {
    
    var presenter: SettingsInteractorOutputProtocol? { get set }
    var dataManager: SettingsDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    //example
}

protocol SettingsDataManagerOutputProtocol: class {
    
}

protocol SettingsDataManagerInputProtocol: class {
    
    // INTERACTOR -> LOCALDATAMANAGER
    func saveCoins(coins: (baseCoin: CoinEntity, convertedCoin: CoinEntity))
}
