//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___PresentationLogic {
    func presentSomething(response: ___VARIABLE_sceneName___.Something.Response)
}

final class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {
    private weak var viewController: ___VARIABLE_sceneName___DisplayLogic?
    
    init(viewController: ___VARIABLE_sceneName___DisplayLogic) {
        self.viewController = viewController
    }
    
    // MARK: - Do something
    func presentSomething(response: ___VARIABLE_sceneName___.Something.Response) {
        let viewModel = ___VARIABLE_sceneName___.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
