//
//  ProfileRouter.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class ProfileRouter: PillarRouteProtocol {

    static func viewController(for type: AppRouteType) -> UIViewController? {
        guard case .profile(let routeType) = type else {
            return nil
        }

        switch routeType {
        case .profileViewController(let name):
            return ProfileViewController(name: name)
        }
    }
}
