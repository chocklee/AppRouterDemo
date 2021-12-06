//
//  ViewController.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pod1ButtonTapped(_ sender: Any) {
        let routeType = AppRouteType.profile(.profile(name: "name", delegate: SomeViewControllerProtocolImp(), block: nil))
        guard let pod1VC = AppRouteDispatcher.shared.viewController(for: routeType) else {
            return
        }
        print("🥬🍎\(pod1VC)🍎🥬")
    }

    @IBAction func pod2ButtonTapped(_ sender: Any) {
        let routeType = AppRouteType.job(.job)
        guard let pod2VC = AppRouteDispatcher.shared.viewController(for: routeType) else {
            return
        }
        print("🥬🍎\(pod2VC)🍎🥬")
    }
}
