//
//  AppRouteRegisterManager.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/16.
//

import UIKit

class AppRouteRegisterManager {

    static let shared = AppRouteRegisterManager()

    func startRegisterEachPillar() {
        AppRouteDispatcher.shared.delegate = self
        AppRoute.shared.jobPillarRoute = JobRouteProtocolImp()
        AppRoute.shared.profilePillarRoute = ProfileRouteProtocolImp()
    }
}

extension AppRouteRegisterManager: AppRouteProtocol {

    func viewController(path: AppRouteType) -> UIViewController? {
        return AppRoute.shared.viewController(for: path)
    }
}
