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
    
    func saveBaseCoin(coin: CoinEntity) {
    
    
    }
    
    func saveConvertedCoin(coin: CoinEntity) {
    
        let parameters = [
            "base": ["id" : 1] ,
            "converted": ["id" : 2]
        ]
        
        UserDefaults.standard.setValue(parameters, forKey: key)
    }
}
