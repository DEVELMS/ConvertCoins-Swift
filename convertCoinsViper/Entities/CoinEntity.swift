//
//  Coin.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

struct CoinEntity {
    
    //MARK: Vars
    
    var value: Double
    var type: Coin
    
    public enum Coin {
        case dollar
        case euro
        case bitcoin
        case real
        
        var id: Int {
            switch self {
            case .dollar: return 1
            case .euro: return 2
            case .bitcoin: return 3
            case .real: return 4
            }
        }
        
        var name: String {
            switch self {
            case .dollar: return "Dollar"
            case .euro: return "Euro"
            case .bitcoin: return "Bitcoin"
            case .real: return "Real"
            }
        }
        
        var value: Double {
            //values based in dollar
            switch self {
            case .real: return 0.32
            case .euro: return 1.06
            case .bitcoin: return 1178.77
            default: return 1
            }
        }
        
        init(id: Int) {
            switch id {
            case 2: self = .euro
            case 3: self = .bitcoin
            case 4: self = .real
            default: self = .dollar
            }
        }
    }
    
    //MARK: Initializers
    
    init(value: Double, type: Coin = .dollar) {
        self.value = value
        self.type = type
    }
}
