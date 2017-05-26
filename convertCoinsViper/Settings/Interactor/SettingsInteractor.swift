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
}

extension SettingsInteractor: SettingsDataManagerOutputProtocol { }
