//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

final class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___DisplayLogic {
    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var router: (___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    
    // MARK: - IBOutlets
//    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - IBActions
//    @IBAction private func buttonTapped(_ sender: UIButton) {
//
//    }
    
    // MARK: - Object lifecycle
    fileprivate init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: - Do something
    private func doSomething() {
        let request = ___VARIABLE_sceneName___.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
//        nameTextField.text = viewModel.name
    }
}

extension ___VARIABLE_sceneName___ViewController {
    static func create() -> ___VARIABLE_sceneName___ViewController {
        let viewController = ___VARIABLE_sceneName___ViewController()
        let presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
        let interactor = ___VARIABLE_sceneName___Interactor(presenter: presenter, worker: ___VARIABLE_sceneName___Worker())
        let router = ___VARIABLE_sceneName___Router(viewController: viewController, dataStore: interactor)
        viewController.interactor = interactor
        viewController.router = router

        return viewController
    }
}
