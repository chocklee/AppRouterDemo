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
        // Do any additional setup after loading the view.

        Dependencies.infra?.appRouteDispatcher.delegate = self
    }

    @IBAction func pod1ButtonTapped(_ sender: Any) {
        guard let profileVC = Dependencies.infra?.appRouteDispatcher.viewController(for: .profile(.profileViewController(name: "name"))) else {
            return
        }
        present(profileVC, animated: true, completion: nil)
    }

    @IBAction func pod2ButtonTapped(_ sender: Any) {
        guard let jobVC = Dependencies.infra?.appRouteDispatcher.viewController(for: .job(.jobViewController)) else {
            return
        }
        present(jobVC, animated: true, completion: nil)
    }
}

extension ViewController: AppRouteDelegate {

    func viewController(for type: AppRouteType) -> UIViewController? {
        return AppRouter.viewController(for: type)
    }
}

