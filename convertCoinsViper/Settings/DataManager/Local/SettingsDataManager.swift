//
//  SettingsDataManager.swift
//  convertCoinsViper
//
//  Created by Storm on 26/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import Foundation

class SettingsDataManager: SettingsDataManagerInputProtocol {
    
    let key: String = "coins_settings"
    
    func saveCoins(coins: (baseCoin: CoinEntity, convertedCoin: CoinEntity)) {
        
        let parameters = [
            "base_id" : 1,
            "converted_id": 2
        ]
        
        UserDefaults.standard.setValue(parameters, forKey: key)
    }
}
