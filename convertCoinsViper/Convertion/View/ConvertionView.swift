//
//  ConvertionView.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

class ConvertionView: UITableViewController {
    
    // MARK: - Vars & Outlets
    
    @IBOutlet weak var baseCoinTitle: UILabel!
    @IBOutlet weak var convertedCoinTitle: UILabel!
    @IBOutlet weak var convertedCoinValue: UILabel!
    
    var presenter: ConvertionPresenterProtocol?
    
    
    // MARK: - View controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Coins converter"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter?.viewDidLoad()
    }
    
    
    // MARK: - Actions
    
    @IBAction func convertValue(_ sender: UIButton) {
        
    }
    
    @IBAction func showSettings(_ sender: UIButton) {
        presenter?.presentSettings()
    }
}

// MARK: - ConvertionView Protocol

extension ConvertionView: ConvertionViewProtocol {
    
    func showConvertedValue(value: String) {
        convertedCoinValue.text = value
    }
    
    func changeDisplayedCoins(coinBase: String, coinToConvert: String) {
        baseCoinTitle.text = coinBase
        convertedCoinTitle.text = coinToConvert
    }
    
}
