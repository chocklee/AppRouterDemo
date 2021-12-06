//
//  JobRouter.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class JobRouter: PillarRouteProtocol {

    static func viewController(for type: AppRouteType) -> UIViewController? {
        guard case .job(let routeType) = type else {
            return nil
        }

        switch routeType {
        case .jobViewController:
            return JobViewController()
        }
    }
}

