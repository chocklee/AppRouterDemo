//
//  AppRouter.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class AppRouter {

    static func viewController(for type: AppRouteType) -> UIViewController? {
        switch type.pillar {
        case .profile:
            return ProfileRouter.viewController(for: type)
        case .job:
            return JobRouter.viewController(for: type)
        }
    }
}
