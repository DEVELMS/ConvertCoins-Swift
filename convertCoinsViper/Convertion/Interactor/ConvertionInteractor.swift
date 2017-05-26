//
//  ConvertionInteractor.swift
//  convertCoinsViper
//
//  Created by Storm on 26/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

class ConvertionInteractor: ConvertionInteractorInputProtocol {
    
    weak var presenter: ConvertionInteractorOutputProtocol?
    var dataManager: ConvertionDataManagerInputProtocol?
    
    func retrieveCoins() {
        
        guard let coins = dataManager?.retrieveCoins() else { return }
        presenter?.didRetrieveCoins(coins)
    }

}
