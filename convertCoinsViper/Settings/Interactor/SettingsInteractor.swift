//
//  SettingsInteractor.swift
//  convertCoinsViper
//
//  Created by Storm on 26/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

class SettingsInteractor: SettingsInteractorInputProtocol {
    
    weak var presenter: SettingsInteractorOutputProtocol?
    var dataManager: SettingsDataManagerInputProtocol?
    
    let coins = [ "Dollar", "Euro", "Real", "Bitcoin" ]
    
    func saveCoins(baseCoinIndex: Int, convertedCoinIndex: Int) {
        
        let baseCoin = CoinEntity(value: 0, type: CoinEntity.Coin(id: baseCoinIndex + 1))
        let convertedCoin = CoinEntity(value: 0, type: CoinEntity.Coin(id: baseCoinIndex + 1))
        
        dataManager?.saveCoins(coins: (baseCoin: baseCoin, convertedCoin: convertedCoin))
    }
}

extension SettingsInteractor: SettingsDataManagerOutputProtocol { }
