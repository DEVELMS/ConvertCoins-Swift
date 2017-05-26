//
//  SettingsWireFrame.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

class SettingsWireFrame: SettingsWireFrameProtocol {
    
    func present(at: UINavigationController) {
        at.pushViewController(createSettingsModule(), animated: true)
    }
    
    private func createSettingsModule() -> UIViewController {
        
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "SettingsController")
            
        if let view = viewController as? SettingsView {
            let presenter: SettingsPresenterProtocol = SettingsPresenter()
            let wireFrame: SettingsWireFrameProtocol = SettingsWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            
            return viewController
        }
        
        return UIViewController()
    }
}
