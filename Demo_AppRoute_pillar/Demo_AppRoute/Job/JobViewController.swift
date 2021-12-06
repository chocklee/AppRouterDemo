//
//  JobViewController.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class JobViewController: UIViewController {

    init(name: String, delegate: SomeViewControllerProtocol?, block: SwiftBlock?) {
        super.init(nibName: nil, bundle: nil)
        print("JobViewController: \(name)")
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }
}

class SomeViewControllerProtocolImp: SomeViewControllerProtocol {

}
