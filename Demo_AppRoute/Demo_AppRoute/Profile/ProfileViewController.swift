//
//  ProfileViewController.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Job", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()

    init(name: String) {
        super.init(nibName: nil, bundle: nil)
        print("ProfileViewController: \(name)")
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray

        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        button.center = view.center
    }

    @objc
    func buttonTapped(_ sender: Any) {
        guard let jobVC = Dependencies.infra?.appRouteDispatcher.viewController(for: .job(.jobViewController)) else {
            return
        }
        present(jobVC, animated: true, completion: nil)
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
