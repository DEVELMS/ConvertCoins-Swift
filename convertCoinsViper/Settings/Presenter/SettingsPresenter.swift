//
//  SettingsPresenter.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

class SettingsPresenter: SettingsPresenterProtocol {
    
    weak var view: SettingsViewProtocol?
    var interactor: SettingsInteractorInputProtocol?
    var wireFrame: SettingsWireFrameProtocol?
    
    func viewDidLoad() { }
    
    func saveCoins(baseCoinIndex: Int, convertedCoinIndex: Int) {
        interactor?.saveCoins(baseCoinIndex: baseCoinIndex, convertedCoinIndex: convertedCoinIndex)
    }
}


extension SettingsPresenter: SettingsInteractorOutputProtocol { }
