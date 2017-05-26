//
//  ConvertionView.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

class ConvertionView: UITableViewController {
    
    @IBOutlet weak var baseCoinTitle: UILabel!
    @IBOutlet weak var convertedCoinTitle: UILabel!
    @IBOutlet weak var convertedCoinValue: UILabel!
    
    // MARK: - Vars
    
    var presenter: ConvertionPresenterProtocol?
    
    
    // MARK: - Internal methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
        self.title = "Coins converter"
    }
    
    
    // MARK: - Actions
    
    @IBAction func convertValue(_ sender: UIButton) {
        
    }
    
    @IBAction func showSettings(_ sender: UIButton) {
        presenter?.presentSettings()
    }
}

extension ConvertionView: ConvertionViewProtocol {

    
    // MARK: - ConvertionView Protocol
    
    func showConvertedValue(value: String) {
        convertedCoinValue.text = value
    }
    
    func changeDisplayedCoins(coinBase: String, coinToConvert: String) {
        baseCoinTitle.text = coinBase
        convertedCoinTitle.text = coinToConvert
    }
    
}

extension ConvertionView {

    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
