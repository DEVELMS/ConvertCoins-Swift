//
//  ConvertionPresenter.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

class ConvertionPresenter: ConvertionPresenterProtocol {

    weak var view: ConvertionViewProtocol?
    var interactor: ConvertionInteractorInputProtocol?
    var wireFrame: ConvertionWireFrameProtocol?
    
    func viewDidLoad() {
        interactor?.retrieveCoins()
    }
    
    func presentSettings() {
        wireFrame?.presentSettingsScreen()
    }
}

extension ConvertionPresenter: ConvertionInteractorOutputProtocol {
    
    func didRetrieveCoins(_ coins: (baseCoin: CoinEntity, convertedCoin: CoinEntity)) {
        view?.changeDisplayedCoins(coinBase: coins.baseCoin.type.name, coinToConvert: coins.convertedCoin.type.name)
    }
}
