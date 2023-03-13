//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___RoutingLogic {
//    func routeToSomewhere()
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore { get }
}

final class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    private weak var viewController: ___VARIABLE_sceneName___ViewController?
    let dataStore: ___VARIABLE_sceneName___DataStore
    
    init(viewController: ___VARIABLE_sceneName___ViewController, dataStore: ___VARIABLE_sceneName___DataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
    
    // MARK: - Route To Somewhere
//    func routeToSomewhere() {
//        let destinationVC = SomewhereViewController.create(name: dataStore.name)
//        viewController?.push(destinationVC)
//    }
}
