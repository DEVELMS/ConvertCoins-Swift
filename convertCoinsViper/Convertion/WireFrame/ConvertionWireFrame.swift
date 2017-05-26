//
//  ConvertionWireFrame.swift
//  convertCoinsViper
//
//  Created by Storm on 25/05/17.
//  Copyright © 2017 DEVELMS. All rights reserved.
//

import UIKit

class ConvertionWireFrame: ConvertionWireFrameProtocol {
    
    func present(at window: UIWindow?) {
        
        let navigation = mainStoryboard.instantiateViewController(withIdentifier: "ConvertionNavigationController") as! UINavigationController
        self.configureConvertionModule(at: navigation)
        
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
    
    func presentSettingsScreen() { 
        
        let navigation = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController
        
        if let navigation = navigation {
            let settingsWireFrame = SettingsWireFrame()
            settingsWireFrame.present(at: navigation)
        }
    }
    
    private func configureConvertionModule(at: UINavigationController) {
        
        if let view = at.childViewControllers.first as? ConvertionView {
            let presenter: ConvertionPresenterProtocol/* & ConvertionInteractorOutputProtocol*/ = ConvertionPresenter()
            //let interactor: ConvertionInteractorInputProtocol & ConvertionLocalDataManagerOutputProtocol = ConvertionInteractor()
            //let localDataManager: PostListLocalDataManagerInputProtocol = PostListLocalDataManager()
            let wireFrame: ConvertionWireFrameProtocol = ConvertionWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            //presenter.interactor = interactor
            //interactor.presenter = presenter
            //interactor.localDatamanager = localDataManager
            //remoteDataManager.remoteRequestHandler = interactor
        }
    }
}
