//
//  JobViewController.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class JobViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Profile", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray

        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        button.center = view.center
    }

    @objc
    func buttonTapped(_ sender: Any) {
        guard let profileVC = Dependencies.infra?.appRouteDispatcher.viewController(for: .profile(.profileViewController(name: "name"))) else {
            return
        }
        present(profileVC, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
