//
//  SettingsView.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

class SettingsView: UITableViewController {

    
    // MARK: - Outlets
    
    @IBOutlet var baseCoinCheckList: [UISwitch]!
    @IBOutlet var convertedCoinCheckList: [UISwitch]!
    
    var presenter: SettingsPresenterProtocol?
    
    
    // MARK: - Vars
    
    //let coinTupleList = [(type: CoinModel.Coin.dollar, tag: 1), (type: CoinModel.Coin.euro, tag: 2), (type: CoinModel.Coin.real, tag: 3), (type: CoinModel.Coin.bitcoin, tag: 4)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
        self.title = "Settings"
    }
    
    // MARK: - Actions
    
    @IBAction func selectBaseCoin(_ sender: UISwitch) {
        
        for check in baseCoinCheckList {
            check.isOn = false
        }
        
        sender.isOn = true
    }
    
    @IBAction func selectConvertedCoin(_ sender: UISwitch) {
        
        for check in convertedCoinCheckList {
            check.isOn = false
        }
        
        sender.isOn = true
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

}

extension SettingsView: SettingsViewProtocol { }
