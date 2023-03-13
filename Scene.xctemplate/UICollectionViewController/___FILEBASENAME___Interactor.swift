//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___BusinessLogic {
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
//    var name: String { get set }
}

final class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    private let presenter: ___VARIABLE_sceneName___PresentationLogic
    private let worker: ___VARIABLE_sceneName___WorkerLogic
//    var name: String = ""
    
    init(presenter: ___VARIABLE_sceneName___PresentationLogic, worker: ___VARIABLE_sceneName___WorkerLogic) {
        self.presenter = presenter
        self.worker = worker
    }
    
    // MARK: - Do something
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
        worker.doSomeWork()
        
        let response = ___VARIABLE_sceneName___.Something.Response()
        presenter.presentSomething(response: response)
    }
}
