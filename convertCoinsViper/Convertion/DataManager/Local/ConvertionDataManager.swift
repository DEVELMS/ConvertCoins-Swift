//
//  ConvertionDataManager.swift
//  convertCoinsViper
//
//  Created by Storm on 26/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import Foundation

class ConvertionDataManager: ConvertionDataManagerInputProtocol {
    
    let key: String = "coins_settings"
    
    func retrieveCoins() -> (baseCoin: CoinEntity, convertedCoin: CoinEntity)? {
        /*
        let value = UserDefaults.standard.value(forKey: key) as? [String: Int]
        
        guard let settingsValue = value else { return nil }
        guard let baseId = settingsValue["base"]["id"] else { return nil }
        guard let convertedId = settingsValue["converted"]["id"] else { return nil }
        
        let baseCoin = CoinEntity(value: 0, type: CoinEntity.Coin(id: baseId))
        let convertedCoin = CoinEntity(value: 0, type: CoinEntity.Coin(id: convertedId))
        
        return (baseCoin: baseCoin, convertedCoin: convertedCoin)
        */
    }
}
